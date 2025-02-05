import 'package:checkout_payment/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomBtn extends StatelessWidget {
  const CustomBtn({super.key, required this.title, this.onPressed});

  final String title;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 65,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xff34A853),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))
          ),
          onPressed:onPressed,
          child: Text(
            title,
            style: Styles.style22,
          )),
    );
  }
}
