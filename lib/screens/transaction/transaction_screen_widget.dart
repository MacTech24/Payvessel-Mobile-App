import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:payvessel_mobile_app/constants.dart';
import 'package:payvessel_mobile_app/utils_size.dart';

Widget filterTransactionInfo(
  BuildContext context,
  String title,
  String value,
  void Function()? onTap,
) {
  return Padding(
    padding: EdgeInsets.only(
      bottom: getProportionateScreenHeight(10),
    ),
    child: Container(
      height: getProportionateScreenHeight(45),
      width: double.infinity,
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(10)),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(
              getProportionateScreenWidth(5),
            ),
          ),
          border: Border.all(
            color: lightGrey,
            width: 1,
          )),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Text(
                    title,
                    style: GoogleFonts.heebo(
                      fontWeight: FontWeight.bold,
                      fontSize: getProportionateScreenWidth(13),
                      color: lightBlack,
                    ),
                  ),
                  Text(
                    value,
                    style: GoogleFonts.heebo(
                      fontWeight: FontWeight.bold,
                      fontSize: getProportionateScreenWidth(11),
                      color: lightBlack,
                    ),
                  ),
                ],
              ),
              InkWell(
                onTap: onTap,
                child: Icon(Icons.arrow_drop_down),
              )
            ],
          )
        ],
      ),
    ),
  );
}
