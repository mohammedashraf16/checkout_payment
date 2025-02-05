import 'package:checkout_payment/features/checkout/presentation/views/widgets/payment_methods.dart';
import 'package:flutter/material.dart';

class PaymentDetailsBody extends StatelessWidget {
  const PaymentDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        children: [
          PaymentMethods(),
        ],
      ),
    );
  }
}

