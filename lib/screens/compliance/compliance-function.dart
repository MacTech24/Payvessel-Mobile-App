import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constants.dart';
import '../../globalWidgets/global_widgets.dart';
import '../../utils_size.dart';

class ComplianceFunction {
  static void showPersonalInfoDialog(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Container(
            width: size.width,
            padding: EdgeInsets.all(getProportionateScreenWidth(20)),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Icon(
                        Icons.close,
                        size: 18,
                        color: white,
                      ),
                      Text(
                        "Personal Information Document",
                        style: GoogleFonts.heebo(
                          color: black,
                          fontSize: getProportionateScreenWidth(14),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                        child: const Icon(
                          Icons.close,
                          size: 18,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 10),
                  DottedBorder(
                    color: orange,
                    strokeWidth: 1,
                    dashPattern: [10, 10],
                    radius: Radius.circular(getProportionateScreenWidth(20)),
                    borderType: BorderType.RRect,
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        vertical: getProportionateScreenHeight(10),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset('assets/icons/file-upload.png'),
                          Text(
                            "Select File",
                            style: GoogleFonts.heebo(
                              color: orange,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      width: size.width,
                    ),
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(10),
                  ),
                  Text(
                    'Upload the Front of your Nigerian Government Issued Identity Card',
                    style: GoogleFonts.heebo(
                      color: black,
                      fontSize: 12,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(5),
                  ),
                  buildButton(
                    context,
                    'filled',
                    lightPink,
                    white,
                    'Upload',
                    getProportionateScreenHeight(50),
                    () {},
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  static void showBvnDialog(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Container(
            width: size.width,
            padding: EdgeInsets.all(getProportionateScreenWidth(20)),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Icon(
                        Icons.close,
                        size: 18,
                        color: white,
                      ),
                      Text(
                        "Personal Information Document",
                        style: GoogleFonts.heebo(
                          color: black,
                          fontSize: getProportionateScreenWidth(14),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                        child: const Icon(
                          Icons.close,
                          size: 18,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 10),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: smallReusableText('Bank Verfication Number')),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: getProportionateScreenHeight(5)),
                    child: Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: getProportionateScreenWidth(8),
                            vertical: getProportionateScreenHeight(3)),
                        height: getProportionateScreenHeight(50),
                        decoration: BoxDecoration(
                          border: Border.all(color: lighterGrey, width: 2),
                          borderRadius: const BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Expanded(
                              child: TextFormField(
                                decoration: InputDecoration(
                                  hintText: "Enter BVN (Compulsory)",
                                  hintStyle: GoogleFonts.heebo(
                                    color: black,
                                    fontSize: getProportionateScreenWidth(14),
                                    fontWeight: FontWeight.bold,
                                  ),
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                          ],
                        )),
                  ),
                  //
                  Align(
                      alignment: Alignment.centerLeft,
                      child: smallReusableText('Date of Birth')),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: getProportionateScreenHeight(5)),
                    child: Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: getProportionateScreenWidth(8),
                            vertical: getProportionateScreenHeight(3)),
                        height: getProportionateScreenHeight(50),
                        decoration: BoxDecoration(
                          border: Border.all(color: lighterGrey, width: 2),
                          borderRadius: const BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Expanded(
                              child: TextFormField(
                                decoration: InputDecoration(
                                  hintText: "dd/mm/yy",
                                  hintStyle: GoogleFonts.heebo(
                                    color: black,
                                    fontSize: getProportionateScreenWidth(14),
                                    fontWeight: FontWeight.bold,
                                  ),
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                            Image.asset('assets/icons/uim_calender.png')
                          ],
                        )),
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(5),
                  ),
                  buildButton(
                    context,
                    'filled',
                    lightPink,
                    white,
                    'Upload',
                    getProportionateScreenHeight(50),
                    () {},
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  static void showVideoConfirmtionDialog(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Container(
            width: size.width,
            padding: EdgeInsets.all(getProportionateScreenWidth(20)),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Icon(
                        Icons.close,
                        size: 18,
                        color: white,
                      ),
                      Text(
                        "Record A Liveliness Video",
                        style: GoogleFonts.heebo(
                          color: black,
                          fontSize: getProportionateScreenWidth(14),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                        child: const Icon(
                          Icons.close,
                          size: 18,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 10),
                  DottedBorder(
                    color: orange,
                    strokeWidth: 1,
                    dashPattern: [10, 10],
                    radius: Radius.circular(getProportionateScreenWidth(20)),
                    borderType: BorderType.RRect,
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        vertical: getProportionateScreenHeight(20),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: getProportionateScreenHeight(10)),
                        child: Column(
                          children: [
                            Image.asset(
                              'assets/icons/video-icon.png',
                              color: orange,
                              width: getProportionateScreenWidth(50),
                            ),
                          ],
                        ),
                      ),
                      width: size.width,
                    ),
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(10),
                  ),
                  Text(
                    'Please record a 5 seconds video where you say the Security keyword to complete your KYC process.',
                    style: GoogleFonts.heebo(
                      color: black,
                      fontSize: 12,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(5),
                  ),
                  buildButton(
                    context,
                    'filled',
                    lightPink,
                    white,
                    'Upload',
                    getProportionateScreenHeight(50),
                    () {},
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  static void showProofOfAddressDialog(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Container(
            width: size.width,
            padding: EdgeInsets.all(getProportionateScreenWidth(20)),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Icon(
                        Icons.close,
                        size: 18,
                        color: white,
                      ),
                      Text(
                        "Proof of Address",
                        style: GoogleFonts.heebo(
                          color: black,
                          fontSize: getProportionateScreenWidth(14),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                        child: const Icon(
                          Icons.close,
                          size: 18,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 10),
                  Container(
                    padding: EdgeInsets.all(getProportionateScreenHeight(10)),
                    width: double.infinity,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Image.asset('assets/icons/carbon_warning.png'),
                            SizedBox(width: getProportionateScreenWidth(10)),
                            Text(
                              "Please choose and upload any of the\nfollowing documents.",
                              style: GoogleFonts.heebo(
                                fontWeight: FontWeight.normal,
                                fontSize: getProportionateScreenWidth(11),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                    decoration: BoxDecoration(
                      color: lighterPink,
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(15),
                  ),
                  //First Row
                  Row(
                    children: [
                      Container(
                        height: 5,
                        width: 5,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: black,
                        ),
                      ),
                      SizedBox(
                        width: getProportionateScreenWidth(5),
                      ),
                      Text(
                        ' Utility bill - Water, Electricity, Rent, Waste bills showing',
                        style: GoogleFonts.heebo(
                          fontSize: getProportionateScreenWidth(9),
                          color: grey,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  RichText(
                    text: TextSpan(
                        text: 'your address',
                        style: GoogleFonts.heebo(
                          fontSize: getProportionateScreenWidth(10),
                          color: grey,
                          fontWeight: FontWeight.bold,
                        ),
                        children: [
                          TextSpan(
                            text:
                                ' (document should not be more than 3\nmonths old).',
                            style: GoogleFonts.heebo(
                              fontSize: getProportionateScreenWidth(10),
                              color: orange,
                              fontWeight: FontWeight.w400,
                            ),
                          )
                        ]),
                  ),
                  //Second Row
                  Row(
                    children: [
                      Container(
                        height: 5,
                        width: 5,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: black,
                        ),
                      ),
                      SizedBox(
                        width: getProportionateScreenWidth(5),
                      ),
                      RichText(
                        text: TextSpan(
                            text: 'Bank statement showing your name & address',
                            style: GoogleFonts.heebo(
                              fontSize: getProportionateScreenWidth(10),
                              color: grey,
                              fontWeight: FontWeight.bold,
                            ),
                            children: [
                              TextSpan(
                                text: ' (under.',
                                style: GoogleFonts.heebo(
                                  fontSize: getProportionateScreenWidth(10),
                                  color: orange,
                                  fontWeight: FontWeight.w400,
                                ),
                              )
                            ]),
                      ),
                    ],
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      '    1 month old)',
                      style: GoogleFonts.heebo(
                        fontSize: getProportionateScreenWidth(10),
                        color: orange,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  //Third Row
                  Row(
                    children: [
                      Container(
                        height: 5,
                        width: 5,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: black,
                        ),
                      ),
                      SizedBox(
                        width: getProportionateScreenWidth(5),
                      ),
                      Text(
                        ' Government-issued document showing your address',
                        style: GoogleFonts.heebo(
                          fontSize: getProportionateScreenWidth(9),
                          color: grey,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  RichText(
                    text: TextSpan(
                      text:
                          '  (e.g contract letter, tax receipt, land use charges, etc).',
                      style: GoogleFonts.heebo(
                        fontSize: getProportionateScreenWidth(10),
                        color: orange,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  SizedBox(height: getProportionateScreenHeight(15)),
                  DottedBorder(
                    color: orange,
                    strokeWidth: 1,
                    dashPattern: [10, 10],
                    radius: Radius.circular(getProportionateScreenWidth(20)),
                    borderType: BorderType.RRect,
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        vertical: getProportionateScreenHeight(10),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset('assets/icons/file-upload.png'),
                          Text(
                            "Select File",
                            style: GoogleFonts.heebo(
                              color: orange,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      width: size.width,
                    ),
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(10),
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(5),
                  ),
                  buildButton(
                    context,
                    'filled',
                    lightPink,
                    white,
                    'Upload',
                    getProportionateScreenHeight(50),
                    () {},
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}


  // RichText(
  //                       text: TextSpan(
  //                           text:
  //                               'Utility bill - Water, Electricity, Rent, Waste bills showing\nyour address',
  //                           style: GoogleFonts.heebo(
  //                             fontSize: getProportionateScreenWidth(10),
  //                             color: grey,
  //                             fontWeight: FontWeight.bold,
  //                           ),
  //                           children: [
  //                             TextSpan(
  //                               text:
  //                                   ' (document should not be more than 3\nmonths old).',
  //                               style: GoogleFonts.heebo(
  //                                 fontSize: getProportionateScreenWidth(10),
  //                                 color: orange,
  //                                 fontWeight: FontWeight.w400,
  //                               ),
  //                             )
  //                           ]),
  //                     ),

// Utility bill - Water, Electricity, Rent, Waste bills showing your address (document should not be more than 3 months old).
// Bank statement showing your name & address (under 1 month old).
// Government-issued document showing your address (e.g contract letter, tax receipt, land use charges, etc).