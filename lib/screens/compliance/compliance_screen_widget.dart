import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constants.dart';
import '../../utils_size.dart';

Widget complianceInfo(String title, String subTitle) {
  return Padding(
    padding: EdgeInsets.only(bottom: getProportionateScreenHeight(15)),
    child: Container(
      alignment: Alignment.centerLeft,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title,
              style: GoogleFonts.heebo(
                color: black,
                fontSize: getProportionateScreenWidth(14),
              )),
          Text(subTitle,
              style: GoogleFonts.heebo(
                color: black,
                fontWeight: FontWeight.bold,
                fontSize: getProportionateScreenWidth(16),
              )),
        ],
      ),
    ),
  );
}

Widget complianceDocumentCard(BuildContext context, String image, String text,
    IconData icon, Color iconColor, void Function()? onTap) {
  return Padding(
    padding: EdgeInsets.only(bottom: getProportionateScreenHeight(10)),
    child: InkWell(
      onTap: onTap,
      child: Container(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(10)),
        width: double.infinity,
        height: getProportionateScreenHeight(55),
        decoration: const BoxDecoration(
          color: compliancePink,
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      height: getProportionateScreenHeight(30),
                      width: getProportionateScreenHeight(30),
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(6),
                        ),
                        color: orange,
                      ),
                      child: Image.asset(image),
                    ),
                    SizedBox(
                      width: getProportionateScreenHeight(10),
                    ),
                    Text(text)
                  ],
                ),
                Container(
                  height: getProportionateScreenHeight(30),
                  width: getProportionateScreenHeight(30),
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: white,
                  ),
                  child: Icon(
                    icon,
                    color: iconColor,
                    size: 20,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    ),
  );
}
