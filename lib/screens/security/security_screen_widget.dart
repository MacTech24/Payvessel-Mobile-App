import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constants.dart';
import '../../utils_size.dart';

Widget buildSecuritySwitch({
  required BuildContext context,
  required String text,
  required void Function(bool) onToggle,
  required bool status,
}) {
  Size size = MediaQuery.of(context).size;
  return Padding(
    padding: EdgeInsets.only(bottom: getProportionateScreenHeight(20)),
    child: Container(
      height: getProportionateScreenHeight(60),
      width: double.infinity,
      padding: EdgeInsets.symmetric(
        horizontal: getProportionateScreenHeight(10),
      ),
      decoration: BoxDecoration(
        color: lighterPink,
        borderRadius: BorderRadius.all(
          Radius.circular(
            getProportionateScreenHeight(10),
          ),
        ),
      ),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Text(
          text,
          style: GoogleFonts.heebo(
            color: lightBlack,
            fontWeight: FontWeight.w400,
            fontSize: getProportionateScreenWidth(16),
          ),
        ),
        Container(
          child: FlutterSwitch(
              width: getProportionateScreenWidth(50),
              height: getProportionateScreenHeight(30),
              valueFontSize: getProportionateScreenWidth(14),
              toggleSize: 20.0,
              value: status,
              activeColor: orange,
              inactiveColor: appbg,
              activeTextColor: transparent,
              inactiveTextColor: transparent,
              toggleColor: lightGrey,
              activeToggleColor: white,
              inactiveSwitchBorder: Border.all(
                color: lightGrey,
                width: 1.5,
              ),
              activeSwitchBorder: Border.all(
                color: transparent,
              ),
              borderRadius: getProportionateScreenWidth(25),
              padding: getProportionateScreenWidth(4),
              showOnOff: true,
              onToggle: onToggle),
        ),
      ]),
    ),
  );
}

Widget changePasswordButton(
  BuildContext context,
  String text,
  void Function()? onTap,
) {
  Size size = MediaQuery.of(context).size;
  return Padding(
    padding: EdgeInsets.only(bottom: getProportionateScreenHeight(20)),
    child: InkWell(
      onTap: onTap,
      child: Container(
        height: getProportionateScreenHeight(60),
        width: double.infinity,
        padding: EdgeInsets.symmetric(
          horizontal: getProportionateScreenHeight(10),
        ),
        decoration: BoxDecoration(
          color: lighterPink,
          borderRadius: BorderRadius.all(
            Radius.circular(
              getProportionateScreenHeight(10),
            ),
          ),
        ),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text(
            text,
            style: GoogleFonts.heebo(
              color: lightBlack,
              fontWeight: FontWeight.w400,
              fontSize: getProportionateScreenWidth(16),
            ),
          ),
          Image.asset("assets/icons/arrow-forward-ios.png")
        ]),
      ),
    ),
  );
}
