import 'package:checkout_payment/core/utils/styles.dart';
import 'package:flutter/material.dart';

class MyCartView extends StatelessWidget {
  const MyCartView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("My Cart",style: Styles.style25,),
        centerTitle: true,
        leading: Icon(Icons.arrow_back),
      ),
    );
  }
}
