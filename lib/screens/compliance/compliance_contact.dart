import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:payvessel_mobile_app/globalWidgets/global_widgets.dart';
import 'package:payvessel_mobile_app/screens/compliance/compliance_screen_widget.dart';
import 'package:payvessel_mobile_app/utils_size.dart';

import '../../constants.dart';

class ComplianceContact extends StatefulWidget {
  const ComplianceContact({Key? key}) : super(key: key);

  @override
  _ComplianceContactState createState() => _ComplianceContactState();
}

class _ComplianceContactState extends State<ComplianceContact> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    Size size = MediaQuery.of(context).size;
    return Container(
      child: Scaffold(
        appBar: reusableAppBar("Compliance", appbg),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.all(getProportionateScreenHeight(10)),
                child: Container(
                  width: size.width,
                  padding: EdgeInsets.all(getProportionateScreenHeight(15)),
                  decoration: const BoxDecoration(
                    color: white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  child: Column(
                    children: [
                      Text("Contact",
                          style: GoogleFonts.heebo(
                              color: orange,
                              fontSize: getProportionateScreenWidth(18))),
                      complianceInfo(
                          "Business Email", "macyjanet@demomail.com"),
                      complianceInfo("Phone Number", "08067057524"),
                      complianceInfo("Business Address",
                          "15 Turkey Avenue, Farm town, Lagos State."),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: getProportionateScreenHeight(250),
              ),
              Padding(
                padding:
                    EdgeInsets.only(bottom: getProportionateScreenHeight(40)),
                child: Container(
                  width: size.width * 0.9,
                  child: buildButton(
                    context,
                    'filled',
                    orange,
                    white,
                    'Next',
                    getProportionateScreenHeight(60),
                    () {
                      Navigator.of(context).pushNamed('/complianceDocument');
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
