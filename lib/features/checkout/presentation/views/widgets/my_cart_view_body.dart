import 'package:checkout_payment/core/widgets/custom_btn.dart';
import 'package:checkout_payment/features/checkout/presentation/views/widgets/order_info_item.dart';
import 'package:checkout_payment/features/checkout/presentation/views/payment_details.dart';
import 'package:checkout_payment/features/checkout/presentation/views/widgets/payment_methods.dart';
import 'package:checkout_payment/features/checkout/presentation/views/widgets/total_price_widget.dart';
import 'package:flutter/material.dart';

class MyCartViewBody extends StatelessWidget {
  const MyCartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 18.0),
              child: Image.asset("assets/images/cart.png"),
            ),
          ),
          SizedBox(height: 30),
          OrderInfoItem(title: "Order Subtotal", value: r"42.97$"),
          OrderInfoItem(title: "Discount", value: r"0$"),
          OrderInfoItem(title: "shipping", value: r"8$"),
          SizedBox(height: 20),
          Divider(
            thickness: 2,
          ),
          SizedBox(height: 20),
          TotalPrice(title: "Total", value: r"50.97$"),
          SizedBox(height: 20),
          CustomBtn(
            title: "Complete Payment",
            onPressed: () {
              showModalBottomSheet(context: context, builder: (context) => PaymentMethodsBottomSheet(),);
            },
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
class PaymentMethodsBottomSheet extends StatelessWidget {
  const PaymentMethodsBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: 16),
          PaymentMethods(),
          SizedBox(height: 32),
          CustomBtn(title: "Continue",onPressed: (){},),
        ],
      ),
    );
  }
}
