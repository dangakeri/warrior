import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../consts/app_colors.dart';
import '../pages/home.dart';
import '../widgets/continue_widget.dart';

class DOB extends StatefulWidget {
  const DOB({super.key});

  @override
  State<DOB> createState() => _DOBState();
}

class _DOBState extends State<DOB> {
  TextEditingController editingController = TextEditingController();
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
        editingController.text = picked.toString().split(' ')[0];
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: AppColors.background1,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.background1,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            const Row(
              children: [
                Text(
                  'Welcome Daniel, we have even more',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w800,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            const Text(
              'Help us with your Date of birth we help in meditating and have good mental growth',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w100,
                color: Colors.white,
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.3),
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Center(
                child: TextFormField(
                  controller: editingController,
                  readOnly: true,
                  onTap: () {
                    _selectDate(context);
                  },
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                    fontFamily: 'Nunito',
                  ),
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Date of birth',
                    suffixIcon: Icon(Icons.date_range),
                    hintStyle:
                        TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 30),
            ContinueWidget(
              callback: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return CupertinoAlertDialog(
                        title: const Text(
                          "Terms & Conditions",
                          style: TextStyle(
                            fontFamily: "Nunito",
                            fontSize: 16,
                            color: Colors.white,
                          ),
                        ),
                        content: const Padding(
                          padding: EdgeInsets.only(top: 18),
                          child: Text(
                            "By signing up, you agree to our terms and conditions including Data Usage.",
                            style: TextStyle(
                              fontFamily: "Nunito",
                              fontSize: 13,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        actions: [
                          CupertinoButton(
                              child: const Text(
                                'Ok',
                                style: TextStyle(
                                  fontFamily: "Nunito",
                                  fontSize: 13,
                                  color: AppColors.blue,
                                ),
                              ),
                              onPressed: () async {
                                SharedPreferences prefs =
                                    await SharedPreferences.getInstance();
                                prefs.setString('DOB', selectedDate.toString());
                                Navigator.of(context)
                                    .popUntil((route) => route.isFirst);

                                // ignore: use_build_context_synchronously
                                Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (BuildContext context) =>
                                            const Home()));
                              })
                        ],
                      );
                    });
              },
              text: 'Sign up',
            ),
          ],
        ),
      ),
    );
  }
}
