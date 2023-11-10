import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:payvessel_mobile_app/constants.dart';
import 'package:payvessel_mobile_app/utils_size.dart';

Widget buildTextField(
  BuildContext context,
  String type,
  String hintText,
  IconData icon,
  void Function(String)? onChanged,
  void Function(String?)? onSaved,
  void Function()? onTap,
) {
  return Padding(
    padding: EdgeInsets.only(top: getProportionateScreenHeight(3)),
    child: Container(
        // height: getProportionateScreenHeight(40),
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(10)),
        decoration: BoxDecoration(
          color: appbg,
          border: Border.all(color: lighterGrey, width: 2),
          borderRadius: const BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        child: Row(
          children: [
            Expanded(
              child: TextFormField(
                obscureText: type == "password" ? true : false,
                onChanged: onChanged,
                onSaved: onSaved,
                onTap: onTap,
                decoration: InputDecoration(
                  hintText: hintText,
                  hintStyle: GoogleFonts.heebo(
                    color: lighterGrey,
                    fontSize: getProportionateScreenWidth(14),
                  ),
                  border: InputBorder.none,
                ),
              ),
            ),
            type == "password"
                ? Icon(
                    Icons.visibility_off,
                    color: lighterGrey,
                    size: getProportionateScreenWidth(20),
                  )
                : Container(),
          ],
        )),
  );
}

Widget loginButton(
  BuildContext context,
  Color buttonColor,
  Color buttonTextColor,
  String buttonText,
  void Function()? onPressed,
) {
  return InkWell(
    onTap: onPressed,
    child: Container(
      height: getProportionateScreenHeight(60),
      width: double.infinity,
      decoration: BoxDecoration(
        color: buttonColor,
        borderRadius: const BorderRadius.all(
          Radius.circular(8),
        ),
      ),
      child: Center(
        child: Text(
          buttonText,
          style: GoogleFonts.heebo(
              color: buttonTextColor,
              fontWeight: FontWeight.bold,
              fontSize: getProportionateScreenWidth(16)),
        ),
      ),
    ),
  );
}
