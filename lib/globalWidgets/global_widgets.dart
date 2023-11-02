import 'package:flutter/material.dart';
// import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants.dart';
import '../utils_size.dart';

AppBar reusableAppBar(String title, Color bg) {
  return AppBar(
    centerTitle: true,
    backgroundColor: bg,
    elevation: 0,
    title: Text(
      title,
      style: GoogleFonts.heebo(
        color: black,
        fontSize: getProportionateScreenWidth(18),
        fontWeight: FontWeight.w400,
      ),
    ),
  );
}

Widget buildButton(
  BuildContext context,
  String type,
  Color buttonColor,
  Color buttonTextColor,
  String buttonText,
  double height,
  void Function()? onPressed,
) {
  return InkWell(
    onTap: onPressed,
    child: Container(
      height: height,
      width: double.infinity,
      decoration: BoxDecoration(
        color: type == "filled" ? buttonColor : Colors.transparent,
        borderRadius: const BorderRadius.all(
          Radius.circular(8),
        ),
      ),
      child: Center(
        child: Text(
          buttonText,
          style: GoogleFonts.heebo(
              color: buttonTextColor,
              fontWeight:
                  type == "filled" ? FontWeight.bold : FontWeight.normal,
              fontSize: getProportionateScreenWidth(16)),
        ),
      ),
    ),
  );
}

Widget reusableText(String text) {
  return Container(
    child: Text(
      text,
      style: GoogleFonts.heebo(
        fontSize: getProportionateScreenWidth(16),
        color: lightBlack,
      ),
    ),
  );
}

Widget smallReusableText(String text) {
  return Text(
    text,
    style: GoogleFonts.heebo(
      color: black,
      fontSize: 12,
    ),
    textAlign: TextAlign.center,
  );
}

Widget mediumReusableText(String text) {
  return Container(
    child: Text(
      text,
      style: GoogleFonts.heebo(
        fontSize: getProportionateScreenWidth(14),
        color: lightBlack,
      ),
    ),
  );
}

Widget transactionCard(Color cardColor) {
  return Container(
    width: double.infinity,
    height: getProportionateScreenHeight(60),
    margin: EdgeInsets.only(
      bottom: getProportionateScreenWidth(10),
    ),
    padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(5)),
    decoration: BoxDecoration(
      color: cardColor,
      borderRadius: BorderRadius.all(
        Radius.circular(getProportionateScreenWidth(10)),
      ),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.all(getProportionateScreenWidth(5)),
                    height: getProportionateScreenHeight(30),
                    width: getProportionateScreenHeight(30),
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: green,
                    ),
                    child: Image.asset("assets/icons/inbound-transaction.png"),
                  ),
                  SizedBox(
                    width: getProportionateScreenWidth(5),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Inbound Transaction",
                        style: GoogleFonts.heebo(
                          color: black,
                          fontSize: getProportionateScreenWidth(13),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        "18, October 2023 | 12:33 pm",
                        style: GoogleFonts.heebo(
                          color: black,
                          fontSize: getProportionateScreenWidth(10),
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  )
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    "NGN5,000",
                    style: GoogleFonts.heebo(
                      color: black,
                      fontSize: getProportionateScreenWidth(13),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        height: getProportionateScreenHeight(8),
                        width: getProportionateScreenHeight(8),
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.green,
                        ),
                      ),
                      SizedBox(
                        width: getProportionateScreenWidth(5),
                      ),
                      const Text("Successful"),
                    ],
                  ),
                ],
              )
            ]),
      ],
    ),
  );
}

// toastNotification({
//   required String msg,
//   Color? bgColor = lighterGreen,
//   Color? textColor = green,
// }) {
//   return Fluttertoast.showToast(
//     msg: msg,
//     toastLength: Toast.LENGTH_SHORT,
//     gravity: ToastGravity.BOTTOM,
//     timeInSecForIosWeb: 2,
//     textColor: textColor,
//     backgroundColor: bgColor,
//   );
// }
