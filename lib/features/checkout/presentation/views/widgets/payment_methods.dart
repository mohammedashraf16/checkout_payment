import 'package:checkout_payment/features/checkout/presentation/views/widgets/payment_method_item.dart';
import 'package:flutter/material.dart';

class PaymentMethods extends StatefulWidget {
  const PaymentMethods({super.key});

  @override
  State<PaymentMethods> createState() => _PaymentMethodsState();
}

class _PaymentMethodsState extends State<PaymentMethods> {
  final List<String> paymentMethodsItem = const [
    "assets/images/credit.svg",
    "assets/images/paypal.svg",
  ];
int activeIndex =0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62,
      child: ListView.builder(
        itemCount: paymentMethodsItem.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: GestureDetector(
              onTap: () {
                activeIndex=index;
                setState(() {});
              },
              child: PaymentMethodItem(
                image: paymentMethodsItem[index],
                isActive: activeIndex==index,
              ),
            ),
          );
        },
      ),
    );
  }
}
