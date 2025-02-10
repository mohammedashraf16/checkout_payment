import 'package:checkout_payment/core/widgets/custom_btn.dart';
import 'package:checkout_payment/features/checkout/presentation/views/thank_you_view.dart';
import 'package:checkout_payment/features/checkout/presentation/views/widgets/custom_credit_card.dart';
import 'package:checkout_payment/features/checkout/presentation/views/widgets/payment_methods.dart';
import 'package:flutter/material.dart';

class PaymentDetailsBody extends StatefulWidget {
  const PaymentDetailsBody({super.key});

  @override
  State<PaymentDetailsBody> createState() => _PaymentDetailsBodyState();
}

class _PaymentDetailsBodyState extends State<PaymentDetailsBody> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autoValidateMode = AutovalidateMode.disabled;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(child: PaymentMethods()),
        SliverToBoxAdapter(child: SizedBox(height: 34)),
        SliverToBoxAdapter(
            child: CustomCreditCard(
          autoValidateMode: autoValidateMode,
          formKey: formKey,
        )),
        SliverFillRemaining(
            hasScrollBody: false,
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding:
                    const EdgeInsets.only(bottom: 12.0, right: 16, left: 16),
                child: CustomBtn(
                  title: "Pay",
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      formKey.currentState!.save();
                    } else {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => ThankYouView(),
                      ));
                      autoValidateMode = AutovalidateMode.always;
                      setState(() {});
                    }
                  },
                ),
              ),
            )),
      ],
    );
  }
}
