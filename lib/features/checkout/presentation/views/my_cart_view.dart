import 'package:checkout_payment/core/widgets/custom_build_app_bar.dart';
import 'package:checkout_payment/features/checkout/presentation/views/widgets/my_cart_view_body.dart';
import 'package:flutter/material.dart';

class MyCartView extends StatelessWidget {
  const MyCartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(title: "My Cart"),
      body: MyCartViewBody(),
    );
  }

}