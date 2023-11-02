import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constants.dart';
import '../../utils_size.dart';

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
    padding: EdgeInsets.symmetric(vertical: getProportionateScreenHeight(5)),
    child: Container(
        padding: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(8),
            vertical: getProportionateScreenHeight(1)),
        height: getProportionateScreenHeight(55),
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
                      fontSize: getProportionateScreenWidth(14)),
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
