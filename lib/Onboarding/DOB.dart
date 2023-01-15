// ignore_for_file: use_build_context_synchronously

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../pages/Home.dart';
import '../widgets/TextFieldWidget.dart';
import '../widgets/continueWidget.dart';

class DOB extends StatefulWidget {
  const DOB({super.key});

  @override
  State<DOB> createState() => _DOBState();
}

class _DOBState extends State<DOB> {
  String date = '';
  DateTime selectedDate = DateTime.now();
  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101));
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

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
                  'Welcome Daniel, we have even more',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w800),
                ),
              ],
            ),
            const Text(
              'Help us with your Date of birth we help in meditating and have good mental growth',
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
                child: Center(
                  child: TextFormField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        suffixIcon: GestureDetector(
                            onTap: () {
                              _selectDate(context);
                            },
                            child: const Icon(Icons.date_range)),
                        hintText: selectedDate.toString().split(' ')[0],
                        hintStyle: const TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w400)),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 30),
            GestureDetector(
              onTap: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return CupertinoAlertDialog(
                        title: const Text(
                          "Terms & Conditions",
                          style: TextStyle(fontFamily: "Nunito", fontSize: 16),
                        ),
                        content: const Padding(
                          padding: EdgeInsets.only(top: 18),
                          child: Text(
                            "By signing up, you agree to our terms and conditions including Data Usage.",
                            style:
                                TextStyle(fontFamily: "Nunito", fontSize: 13),
                          ),
                        ),
                        actions: [
                          CupertinoButton(
                              child: const Text(
                                'Ok',
                                style: TextStyle(
                                    fontFamily: "Nunito",
                                    fontSize: 13,
                                    color: Colors.orange),
                              ),
                              onPressed: () async {
                                SharedPreferences prefs =
                                    await SharedPreferences.getInstance();
                                prefs.setString('DOB', selectedDate.toString());
                                Navigator.of(context)
                                    .popUntil((route) => route.isFirst);
                                Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (BuildContext context) =>
                                            Home()));
                              })
                        ],
                      );
                    });
              },
              child: const ContinueWidget(
                text: 'Sign up',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
