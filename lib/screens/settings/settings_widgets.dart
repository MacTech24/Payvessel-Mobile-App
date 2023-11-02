import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:payvessel_mobile_app/utils_size.dart';

import '../../constants.dart';

Widget settingProfileInfoCard(BuildContext context) {
  Size size = MediaQuery.of(context).size;
  return Container(
    padding: EdgeInsets.all(getProportionateScreenWidth(10)),
    height: size.height * 0.12,
    width: size.width,
    decoration: const BoxDecoration(
      color: orange,
      borderRadius: BorderRadius.all(Radius.circular(10)),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          children: [
            Container(
              height: getProportionateScreenHeight(55),
              width: getProportionateScreenHeight(55),
              decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: white,
                  image: DecorationImage(
                    image: AssetImage("assets/images/image-1.jpeg"),
                    fit: BoxFit.cover,
                  )),
            ),
            SizedBox(
              width: getProportionateScreenWidth(10),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Macy Janet ",
                  style: GoogleFonts.heebo(
                      color: white,
                      fontWeight: FontWeight.bold,
                      fontSize: getProportionateScreenWidth(18)),
                ),
                Text(
                  "0123456789 - 9PSB",
                  style: GoogleFonts.heebo(
                      color: white, fontSize: getProportionateScreenWidth(14)),
                ),
              ],
            )
          ],
        ),
      ],
    ),
  );
}

Widget blackCard(
  BuildContext context,
  String icon,
  String text,
) {
  Size size = MediaQuery.of(context).size;
  return Expanded(
      child: Container(
    height: size.height * 0.05,
    width: double.infinity,
    decoration: const BoxDecoration(
      color: black,
      borderRadius: BorderRadius.all(Radius.circular(10)),
    ),
    child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Container(
        height: getProportionateScreenHeight(25),
        width: getProportionateScreenHeight(25),
        decoration: BoxDecoration(color: grey1, shape: BoxShape.circle),
        child: Image.asset(icon),
      ),
      SizedBox(
        width: getProportionateScreenWidth(5),
      ),
      Text(
        text,
        style: GoogleFonts.heebo(
            color: white,
            fontWeight: FontWeight.normal,
            fontSize: getProportionateScreenWidth(12)),
      ),
    ]),
  ));
}

Widget settingsFeatureCard(
    BuildContext context, String icon, String title, void Function()? onTap) {
  Size size = MediaQuery.of(context).size;
  return Padding(
    padding: EdgeInsets.only(bottom: getProportionateScreenHeight(5)),
    child: InkWell(
      onTap: onTap,
      child: Container(
        height: size.height * 0.062,
        width: size.width,
        padding: EdgeInsets.all(getProportionateScreenWidth(10)),
        decoration: const BoxDecoration(
          color: white,
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
                      height: getProportionateScreenHeight(26),
                      width: getProportionateScreenHeight(26),
                      decoration: const BoxDecoration(
                        color: orange,
                        borderRadius: BorderRadius.all(
                          Radius.circular(5),
                        ),
                      ),
                      child: Image.asset(icon),
                    ),
                    SizedBox(
                      width: getProportionateScreenWidth(5),
                    ),
                    Text(title,
                        style: GoogleFonts.heebo(
                          color: lightBlack,
                          fontWeight: FontWeight.w400,
                          fontSize: getProportionateScreenWidth(16),
                        ))
                  ],
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  size: getProportionateScreenWidth(15),
                  color: lightBlack,
                )
              ],
            )
          ],
        ),
      ),
    ),
  );
}
