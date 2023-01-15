// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../widgets/TextFieldWidget.dart';
import '../widgets/continueWidget.dart';
import 'DOB.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({super.key});

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  String userName = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Row(
              children: const [
                Text(
                  'Lets know your name',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w800),
                ),
              ],
            ),
            const Text(
              'Help us with your name we help in meditating and have good mental growth',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w100),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.3),
            Container(
              height: 55,
              width: MediaQuery.of(context).size.width * 0.85,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.black.withOpacity(.4)),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: TextFormField(
                  onChanged: (val) {
                    setState(() {
                      userName = val;
                    });
                  },
                  decoration: const InputDecoration(
                      hintText: 'Enter your name buddy',
                      border: InputBorder.none,
                      hintStyle:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w400)),
                ),
              ),
            ),
            const SizedBox(height: 30),
            GestureDetector(
              onTap: () async {
                if (userName == '') {
                  return;
                } else {
                  SharedPreferences prefs =
                      await SharedPreferences.getInstance();
                  prefs.setString('userName', userName);
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => const DOB()));
                }
              },
              child: const ContinueWidget(
                text: 'Continue',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
