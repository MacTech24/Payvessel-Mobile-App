import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:payvessel_mobile_app/globalWidgets/global_widgets.dart';
import 'package:payvessel_mobile_app/screens/compliance/compliance_screen_widget.dart';
import 'package:payvessel_mobile_app/utils_size.dart';

import '../../constants.dart';

class ComplianceProfile extends StatefulWidget {
  const ComplianceProfile({Key? key}) : super(key: key);

  @override
  _ComplianceProfileState createState() => _ComplianceProfileState();
}

class _ComplianceProfileState extends State<ComplianceProfile> {
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
                      Text("Profile",
                          style: GoogleFonts.heebo(
                              color: orange,
                              fontSize: getProportionateScreenWidth(18))),
                      complianceInfo("Business Owner", "Macy Janet"),
                      complianceInfo("Legal Business Name", "De Le-chaise LTD"),
                      complianceInfo("Business Industry", "Baking / Pastry"),
                      complianceInfo('Business Descripton', 'Baking / Pastry')
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: getProportionateScreenHeight(200),
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
                      Navigator.of(context).pushNamed('/complianceContact');
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
