import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PremiumOfferWidget extends StatelessWidget {
  final String title;

  const PremiumOfferWidget({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(
            CupertinoIcons.checkmark_alt_circle,
            color: Colors.white,
          ),
          SizedBox(width: MediaQuery.of(context).size.width * 0.01),
          Text(
            title,
            style: TextStyle(
              fontFamily: 'Nunito',
              fontSize: 16,
              fontWeight: FontWeight.w300,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
