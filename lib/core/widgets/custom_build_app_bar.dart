import 'package:checkout_payment/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

AppBar buildAppBar({String? title}) {
  return AppBar(
    title: Text(
      title??"",
      style: Styles.style25,
    ),
    centerTitle: true,
    leading: Center(
        child: SvgPicture.asset(
          "assets/images/arrow.svg",)),
  );
}
