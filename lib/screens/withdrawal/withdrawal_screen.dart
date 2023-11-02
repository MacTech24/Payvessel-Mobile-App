import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:payvessel_mobile_app/constants.dart';
import 'package:payvessel_mobile_app/screens/businessInformation/business_information_screen_widget.dart';
import 'package:payvessel_mobile_app/screens/withdrawal/withdrawal_screen_widget.dart';
import 'package:payvessel_mobile_app/utils_size.dart';

import '../../globalWidgets/global_widgets.dart';

class WithdrawalScreen extends StatefulWidget {
  const WithdrawalScreen({Key? key}) : super(key: key);

  @override
  _WithdrawalScreenState createState() => _WithdrawalScreenState();
}

class _WithdrawalScreenState extends State<WithdrawalScreen> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    Size size = MediaQuery.of(context).size;
    return Container(
      child: Scaffold(
        appBar: reusableAppBar("Withdrawal", appbg),
        body: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: getProportionateScreenWidth(10),
              vertical: getProportionateScreenHeight(5)),
          child: Column(
            children: [
              Container(
                width: size.width,
                padding: EdgeInsets.all(getProportionateScreenWidth(15)),
                decoration: BoxDecoration(
                  color: white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(
                      getProportionateScreenWidth(10),
                    ),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Add Bank Account for Withdrawal",
                      style: GoogleFonts.heebo(
                          color: black,
                          fontWeight: FontWeight.normal,
                          fontSize: getProportionateScreenWidth(16)),
                    ),
                    SizedBox(
                      height: getProportionateScreenHeight(15),
                    ),
                    Align(
                        alignment: Alignment.centerLeft,
                        child: mediumReusableText("Bank Name")),
                    bankName(context),
                    SizedBox(
                      height: getProportionateScreenHeight(10),
                    ),
                    Align(
                        alignment: Alignment.centerLeft,
                        child: mediumReusableText("Account Number")),
                    withdrawalInfo(
                        context, "Enter Account Number", TextInputType.number),
                    SizedBox(
                      height: getProportionateScreenHeight(10),
                    ),
                    Align(
                        alignment: Alignment.centerLeft,
                        child: mediumReusableText("Account Name")),
                    withdrawalInfo(
                        context, "Enter Account Name", TextInputType.name),
                    SizedBox(
                      height: getProportionateScreenHeight(10),
                    ),
                    Align(
                        alignment: Alignment.centerLeft,
                        child: mediumReusableText("OTP")),
                    otpInfo(context),
                    SizedBox(
                      height: getProportionateScreenHeight(20),
                    ),
                    buildButton(
                      context,
                      'filled',
                      lightPink,
                      white,
                      'Save',
                      50,
                      () {},
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
