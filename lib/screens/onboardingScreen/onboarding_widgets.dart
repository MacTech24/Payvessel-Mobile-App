import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constants.dart';
import '../../utils_size.dart';

Widget onboardingUsers(String image) {
  return Container(
    height: getProportionateScreenHeight(40),
    width: getProportionateScreenHeight(40),
    decoration: BoxDecoration(
      color: background,
      borderRadius: BorderRadius.all(
        Radius.circular(
          getProportionateScreenHeight(30),
        ),
      ),
    ),
    padding: EdgeInsets.all(5),
    child: Container(
      height: getProportionateScreenHeight(35),
      width: getProportionateScreenHeight(35),
      // padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: lightBlack,
        borderRadius: BorderRadius.all(
          Radius.circular(
            getProportionateScreenHeight(30),
          ),
        ),
        image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.contain,
        ),
      ),
    ),
  );
}

Widget trustText() {
  return RichText(
    text: TextSpan(
      text: "Payvessel is trusted by ",
      style: GoogleFonts.heebo(
        color: lightBlack,
        fontSize: getProportionateScreenWidth(11),
      ),
      children: [
        TextSpan(
          text: "1000+ ",
          style: GoogleFonts.heebo(
            fontWeight: FontWeight.bold,
          ),
        ),
        TextSpan(
            text: "wonderful Businesses",
            style: GoogleFonts.heebo(
              fontWeight: FontWeight.normal,
            )),
      ],
    ),
  );
}

Widget confidenceText() {
  return Text(
    "Build Confidence Between Your Business\nand Customers with Payvessel",
    style: GoogleFonts.heebo(
      fontWeight: FontWeight.bold,
      fontSize: getProportionateScreenWidth(15),
    ),
    textAlign: TextAlign.center,
  );
}

Widget insuranceText() {
  return Text(
    "Payvessel provides your Nigerian business with a means to receive payments from customers with ease.",
    style: GoogleFonts.heebo(
      color: lightBlack,
      fontSize: getProportionateScreenWidth(12),
    ),
    textAlign: TextAlign.center,
  );
}
