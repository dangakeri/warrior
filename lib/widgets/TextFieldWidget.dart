import 'package:flutter/material.dart';

class TextFieldWidget extends StatefulWidget {
  final String text;
  final bool icon;

  const TextFieldWidget({
    Key? key,
    required this.text,
    required this.icon,
  }) : super(key: key);

  @override
  State<TextFieldWidget> createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFieldWidget> {
  TextEditingController dateInput = TextEditingController();
  // late final Date selectedDate;
  DateTime selectedDate = DateTime.now();
  @override
  Widget build(BuildContext context) {
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

    return Container(
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
            controller: dateInput,
            decoration: InputDecoration(
                border: InputBorder.none,
                suffixIcon: widget.icon == true
                    ? GestureDetector(
                        onTap: () {
                          _selectDate(context);
                        },
                        child: const Icon(Icons.date_range))
                    : const SizedBox(),
                hintText: widget.icon == true
                    ? selectedDate.toString().split(' ')[0]
                    : widget.text,
                hintStyle:
                    const TextStyle(fontSize: 15, fontWeight: FontWeight.w400)),
          ),
        ),
      ),
    );
  }
}
