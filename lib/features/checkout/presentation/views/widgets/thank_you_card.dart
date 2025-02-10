import 'package:checkout_payment/core/utils/styles.dart';
import 'package:checkout_payment/features/checkout/presentation/views/widgets/card_info_widget.dart';
import 'package:checkout_payment/features/checkout/presentation/views/widgets/payment_info_item.dart';
import 'package:checkout_payment/features/checkout/presentation/views/widgets/total_price_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ThankYouCard extends StatelessWidget {
  const ThankYouCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: ShapeDecoration(
        color: Color(0xffD9D9D9),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 66.0, left: 22, right: 22),
        child: Column(
          children: [
            Text("Thank You!", style: Styles.style25),
            Text("Your transaction was successful", style: Styles.style20),
            SizedBox(height: 42),
            PaymentItemInfo(text: "Date", value: "01/24/2023"),
            SizedBox(height: 20),
            PaymentItemInfo(text: "Time", value: "10:15 AM"),
            SizedBox(height: 20),
            PaymentItemInfo(text: "To", value: "Sam Louis"),
            SizedBox(height: 30),
            Divider(
              thickness: 2,
            ),
            TotalPrice(title: "Total", value: r"50.97$"),
            SizedBox(height: 30),
            CardInfoWidget(),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  FontAwesomeIcons.barcode,
                  size: 60,
                ),
                Container(
                  width: 113,
                  height: 58,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 1.50, color: Color(0xFF34A853)),
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  child: Center(
                      child: Text(
                    "Paid",
                    style: Styles.style24.copyWith(color: Color(0xff34A853)),
                  )),
                )
              ],
            ),
            SizedBox(
                height: (MediaQuery.sizeOf(context).height*.2+20)/2-29
            )
          ],
        ),
      ),
    );
  }
}