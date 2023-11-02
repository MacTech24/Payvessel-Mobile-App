import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constants.dart';
import '../../utils_size.dart';

Widget profileInfo(BuildContext context, String text) {
  Size size = MediaQuery.of(context).size;
  return Padding(
    padding: EdgeInsets.only(bottom: getProportionateScreenHeight(10)),
    child: Container(
      height: getProportionateScreenHeight(55),
      width: size.width,
      padding: EdgeInsets.all(getProportionateScreenWidth(10)),
      decoration: BoxDecoration(
          color: profileFieldColor,
          border: Border.all(
            color: orange,
          ),
          borderRadius: BorderRadius.all(Radius.circular(10))),
      child: Align(
          alignment: Alignment.centerLeft,
          child: Text(
            text,
            style: GoogleFonts.heebo(
              fontSize: getProportionateScreenWidth(16),
            ),
          )),
    ),
  );
}
