import 'package:flutter/material.dart';

import '../../constants.dart';
import '../../utils_size.dart';

Widget helpAndSupportCard1(
  BuildContext context,
  String icon,
  String title,
  String subTitle,
  String rightIcon,
  void Function()? onTap,
) {
  Size size = MediaQuery.of(context).size;
  return Padding(
    padding: EdgeInsets.only(bottom: getProportionateScreenHeight(5)),
    child: InkWell(
      onTap: onTap,
      child: Container(
        // height: size.height * 0.065,
        width: size.width,
        padding: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(10),
            vertical: getProportionateScreenHeight(15)),
        decoration: const BoxDecoration(
          color: lighterPink,
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
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(title,
                            style: TextStyle(
                              color: lightBlack,
                              fontWeight: FontWeight.w500,
                              fontSize: getProportionateScreenWidth(14),
                            )),
                        Text(subTitle,
                            style: TextStyle(
                              color: lightBlack,
                              fontWeight: FontWeight.w400,
                              fontSize: getProportionateScreenWidth(11),
                            )),
                      ],
                    ),
                  ],
                ),
                Image.asset(rightIcon)
              ],
            )
          ],
        ),
      ),
    ),
  );
}

Widget helpAndSupportCard2(
  BuildContext context,
  String icon,
  String title,
  String rightIcon,
  void Function()? onTap,
) {
  Size size = MediaQuery.of(context).size;
  return Padding(
    padding: EdgeInsets.only(bottom: getProportionateScreenHeight(5)),
    child: InkWell(
      onTap: onTap,
      child: Container(
        // height: size.height * 0.065,
        width: size.width,
        padding: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(10),
            vertical: getProportionateScreenHeight(15)),
        decoration: const BoxDecoration(
          color: lighterPink,
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
                        style: TextStyle(
                          color: lightBlack,
                          fontWeight: FontWeight.w500,
                          fontSize: getProportionateScreenWidth(14),
                        )),
                  ],
                ),
                Image.asset(rightIcon)
              ],
            )
          ],
        ),
      ),
    ),
  );
}
