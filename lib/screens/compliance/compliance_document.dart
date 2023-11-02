import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:payvessel_mobile_app/globalWidgets/global_widgets.dart';
import 'package:payvessel_mobile_app/screens/compliance/compliance-function.dart';
import 'package:payvessel_mobile_app/screens/compliance/compliance_screen_widget.dart';
import 'package:payvessel_mobile_app/utils_size.dart';
import '../../constants.dart';

class ComplianceDocument extends StatefulWidget {
  const ComplianceDocument({Key? key}) : super(key: key);

  @override
  _ComplianceDocumentState createState() => _ComplianceDocumentState();
}

class _ComplianceDocumentState extends State<ComplianceDocument> {
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
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Document",
                          style: GoogleFonts.heebo(
                              color: orange,
                              fontSize: getProportionateScreenWidth(18))),
                      SizedBox(
                        height: getProportionateScreenHeight(10),
                      ),
                      complianceDocumentCard(
                        context,
                        "assets/icons/user-1.png",
                        'Personal Information Document ',
                        Icons.add,
                        orange,
                        () {
                          ComplianceFunction.showPersonalInfoDialog(context);
                        },
                      ),
                      complianceDocumentCard(
                        context,
                        "assets/icons/bvn.png",
                        'BVN',
                        Icons.circle_outlined,
                        Colors.blue,
                        () {
                          ComplianceFunction.showBvnDialog(context);
                        },
                      ),
                      complianceDocumentCard(
                        context,
                        "assets/icons/video.png",
                        'Video Confirmation',
                        Icons.check,
                        Colors.green,
                        () {
                          ComplianceFunction.showVideoConfirmtionDialog(
                              context);
                        },
                      ),
                      complianceDocumentCard(
                        context,
                        "assets/icons/map.png",
                        'Proof of Address',
                        Icons.check,
                        Colors.green,
                        () {
                          ComplianceFunction.showProofOfAddressDialog(context);
                        },
                      ),
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
                    () {},
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
