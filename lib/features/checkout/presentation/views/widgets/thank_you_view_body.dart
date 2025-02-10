import 'package:checkout_payment/features/checkout/presentation/views/widgets/custom_check_icon.dart';
import 'package:checkout_payment/features/checkout/presentation/views/widgets/custom_dashed_line.dart';
import 'package:checkout_payment/features/checkout/presentation/views/widgets/thank_you_card.dart';
import 'package:flutter/material.dart';

class ThankYouViewBody extends StatelessWidget {
  const ThankYouViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 22.0, vertical: 64),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          ThankYouCard(),
          Positioned(
            left: 35,
              right: 32,
              bottom: MediaQuery.sizeOf(context).height * .2+20,
              child: CustomDashedLine()),
          Positioned(
              left: -20,
              bottom: MediaQuery.sizeOf(context).height * .2,
              child: CircleAvatar(
                backgroundColor: Colors.white,
              )),
          Positioned(
              right: -20,
              bottom: MediaQuery.sizeOf(context).height * .2,
              child: CircleAvatar(
                backgroundColor: Colors.white,
              )),
          Positioned(
            left: 0,
            right: 0,
            top: -50,
            child: CustomCheckIcon(),
          ),
        ],
      ),
    );
  }
}

