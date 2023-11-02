import 'package:flutter/material.dart';

import '../../constants.dart';
import '../../globalWidgets/global_widgets.dart';
import '../../utils_size.dart';

Widget businessInfo(String name, String hint) {
  return Column(
    children: [
      Align(
        alignment: Alignment.centerLeft,
        child: mediumReusableText(name),
      ),
      Padding(
        padding: EdgeInsets.only(
          top: getProportionateScreenHeight(3),
          bottom: getProportionateScreenHeight(20),
        ),
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(
            vertical: getProportionateScreenHeight(12),
            horizontal: getProportionateScreenWidth(10),
          ),
          decoration: BoxDecoration(
            color: appbg,
            borderRadius: BorderRadius.all(
              Radius.circular(
                getProportionateScreenWidth(10),
              ),
            ),
          ),
          child: Align(
              alignment: Alignment.centerLeft, child: mediumReusableText(hint)),
        ),
      ),
    ],
  );
}
