import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:payvessel_mobile_app/screens/settings/settings_screens.dart';
import 'package:payvessel_mobile_app/utils_size.dart';

import '../home/home_screen.dart';
import '../transaction/transaction_screen.dart';

Widget buildDashboardScreens(int index) {
  List<Widget> _widgets = [
    const HomeScreen(),
    const TransactionScreen(),
    const SettingsScreen(),
  ];
  return _widgets[index];
}

Widget bottomNavText(String text, Color textColor) {
  return Text(
    text,
    style: GoogleFonts.heebo(
      color: textColor,
      fontSize: getProportionateScreenWidth(13),
      fontWeight: FontWeight.bold,
      letterSpacing: 1,
    ),
  );
}

Widget bottomNavButton(
  BuildContext context,
  String icon,
  String text,
  Color iconColor,
  Color textColor,
  Color indicatorColor,
  void Function()? onTap,
) {
  return InkWell(
    onTap: onTap,
    child: Container(
      child: Column(
        children: [
          Image.asset(
            icon,
            width: getProportionateScreenWidth(23),
            color: iconColor,
          ),
          SizedBox(
            height: getProportionateScreenHeight(2),
          ),
          bottomNavText(text, textColor),
          Container(
            height: 4,
            width: 8,
            color: indicatorColor,
          ),
        ],
      ),
    ),
  );
}
