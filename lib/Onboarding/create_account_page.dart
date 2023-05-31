import 'package:flutter/material.dart';

import 'package:shared_preferences/shared_preferences.dart';
import '../consts/app_colors.dart';

import '../widgets/continue_widget.dart';
import 'date_of_birth.dart';

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
      resizeToAvoidBottomInset: true,
      backgroundColor: AppColors.background1,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: MediaQuery.of(context).size.height * 0.19),
            const Text(
              'Lets know your name',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w600,
                color: Colors.white,
                fontFamily: 'Nunito',
              ),
            ),
            const Text(
              'Help us with your name we help in meditating and have good mental growth',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w100,
                color: Colors.white,
                fontFamily: 'Nunito',
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: TextFormField(
                keyboardType: TextInputType.text,
                textCapitalization: TextCapitalization.words,
                style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                  fontFamily: 'Nunito',
                ),
                onChanged: (val) {
                  setState(() {
                    userName = val;
                  });
                },
                decoration: const InputDecoration(
                  hintText: 'e.g John Doe',
                  border: OutlineInputBorder(),
                  hintStyle: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                    fontFamily: 'Nunito',
                  ),
                  labelText: 'Name',
                ),
              ),
            ),
            const SizedBox(height: 30),
            ContinueWidget(
              callback: () async {
                if (userName == '') {
                  return;
                } else {
                  SharedPreferences prefs =
                      await SharedPreferences.getInstance();
                  prefs.setString('userName', userName);
                  // ignore: use_build_context_synchronously
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => const DOB()));
                }
              },
              text: 'Continue',
            ),
          ],
        ),
      ),
    );
  }
}
