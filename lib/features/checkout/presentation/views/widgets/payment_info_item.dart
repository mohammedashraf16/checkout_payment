import 'package:checkout_payment/core/utils/styles.dart';
import 'package:flutter/material.dart';

class PaymentItemInfo extends StatelessWidget {
  const PaymentItemInfo({super.key, required this.text, required this.value});
  final String text,value;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: Styles.style18,
        ),
        Text(
          value,
          style: Styles.style18.copyWith(fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}
