import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constants.dart';
import '../../globalWidgets/global_widgets.dart';
import '../../utils_size.dart';

Widget bankName(BuildContext context) {
  Size size = MediaQuery.of(context).size;
  return Container(
    height: getProportionateScreenHeight(50),
    width: double.infinity,
    padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(10)),
    decoration: BoxDecoration(
        color: appbg,
        borderRadius: BorderRadius.all(
          Radius.circular(getProportionateScreenWidth(10)),
        ),
        border: Border.all(color: lightGrey)),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Select Bank",
          style: GoogleFonts.heebo(
            fontWeight: FontWeight.normal,
            color: grey,
          ),
        ),
        InkWell(
          onTap: () {},
          child: const Icon(
            Icons.arrow_drop_down,
            color: grey,
          ),
        )
      ],
    ),
  );
}

Widget withdrawalInfo(
    BuildContext context, String hintText, TextInputType keyboardType) {
  Size size = MediaQuery.of(context).size;
  return Container(
      height: getProportionateScreenHeight(50),
      width: double.infinity,
      padding: EdgeInsets.symmetric(
          horizontal: getProportionateScreenWidth(10),
          vertical: getProportionateScreenHeight(10)),
      decoration: BoxDecoration(
          color: appbg,
          borderRadius: BorderRadius.all(
            Radius.circular(getProportionateScreenWidth(10)),
          ),
          border: Border.all(color: lightGrey)),
      child: Align(
        child: TextField(
          decoration: InputDecoration(
            hintText: hintText,
            hintStyle: TextStyle(
              fontSize: getProportionateScreenHeight(14),
            ),
            border: InputBorder.none,
          ),
        ),
      ));
}

Widget otpInfo(BuildContext context) {
  Size size = MediaQuery.of(context).size;
  return Container(
      height: getProportionateScreenHeight(50),
      width: double.infinity,
      padding: EdgeInsets.symmetric(
          horizontal: getProportionateScreenWidth(10),
          vertical: getProportionateScreenHeight(10)),
      decoration: BoxDecoration(
          color: appbg,
          borderRadius: BorderRadius.all(
            Radius.circular(getProportionateScreenWidth(10)),
          ),
          border: Border.all(color: lightGrey)),
      child: Align(
        child: TextField(
          decoration: InputDecoration(
            suffixIcon: Text(
              "OTP",
              style: GoogleFonts.heebo(
                color: orange,
                fontWeight: FontWeight.bold,
                fontSize: getProportionateScreenWidth(16),
              ),
            ),
            hintStyle: TextStyle(
              fontSize: getProportionateScreenHeight(14),
            ),
            border: InputBorder.none,
          ),
          keyboardType: TextInputType.number,
        ),
      ));
}
