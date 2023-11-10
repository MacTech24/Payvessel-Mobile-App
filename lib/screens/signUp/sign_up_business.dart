import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:payvessel_mobile_app/screens/signUp/sign_up_screen_widget.dart';
import '../../constants.dart';
import '../../globalWidgets/global_widgets.dart';
import '../../utils_size.dart';

class SignUpBusiness extends StatefulWidget {
  const SignUpBusiness({Key? key}) : super(key: key);

  @override
  _SignUpBusinessState createState() => _SignUpBusinessState();
}

class _SignUpBusinessState extends State<SignUpBusiness> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    Size size = MediaQuery.of(context).size;
    return Container(
      color: background,
      child: Scaffold(
        backgroundColor: background,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: size.height * 0.1,
              ),
              Container(
                alignment: Alignment.center,
                width: size.width,
                child: Image.asset(
                  "assets/images/payvesselLogo.png",
                  width: getProportionateScreenWidth(120),
                ),
              ),
              SizedBox(
                height: getProportionateScreenHeight(10),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(20)),
                child: Form(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: getProportionateScreenHeight(10),
                        ),
                        Container(
                            width: size.width,
                            alignment: Alignment.centerLeft,
                            child: mediumReusableText("Business Name")),
                        buildTextField(
                            context,
                            "businessName",
                            'Enter your Business Name',
                            Icons.visibility_off,
                            (value) {},
                            (value) {},
                            () {}),
                        SizedBox(
                          height: getProportionateScreenHeight(10),
                        ),
                        //
                        Container(
                            width: size.width,
                            alignment: Alignment.centerLeft,
                            child: mediumReusableText("Business Description")),
                        //
                        Padding(
                          padding: EdgeInsets.only(
                              top: getProportionateScreenHeight(3)),
                          child: Container(
                              height: getProportionateScreenHeight(130),
                              padding: EdgeInsets.symmetric(
                                  horizontal: getProportionateScreenWidth(10)),
                              decoration: BoxDecoration(
                                color: appbg,
                                border:
                                    Border.all(color: lighterGrey, width: 2),
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(10),
                                ),
                              ),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: TextFormField(
                                      decoration: InputDecoration(
                                        hintStyle: GoogleFonts.heebo(
                                          color: lighterGrey,
                                          fontSize:
                                              getProportionateScreenWidth(14),
                                        ),
                                        border: InputBorder.none,
                                      ),
                                    ),
                                  ),
                                ],
                              )),
                        ),
                        SizedBox(
                          height: getProportionateScreenHeight(10),
                        ),
                        Container(
                            width: size.width,
                            alignment: Alignment.centerLeft,
                            child:
                                mediumReusableText("Select Business Industry")),
                        Padding(
                          padding: EdgeInsets.only(
                              top: getProportionateScreenHeight(3)),
                          child: Container(
                              // height: getProportionateScreenHeight(40),
                              padding: EdgeInsets.symmetric(
                                  horizontal: getProportionateScreenWidth(10)),
                              decoration: BoxDecoration(
                                color: appbg,
                                border:
                                    Border.all(color: lighterGrey, width: 2),
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(10),
                                ),
                              ),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: TextFormField(
                                      decoration: InputDecoration(
                                        hintText: 'Select Business Industry',
                                        hintStyle: GoogleFonts.heebo(
                                          color: lighterGrey,
                                          fontSize:
                                              getProportionateScreenWidth(14),
                                        ),
                                        border: InputBorder.none,
                                      ),
                                    ),
                                  ),
                                  Icon(
                                    Icons.arrow_drop_down,
                                    color: lightBlack,
                                    size: getProportionateScreenWidth(30),
                                  )
                                ],
                              )),
                        ),

                        SizedBox(
                          height: getProportionateScreenHeight(200),
                        ),
                      ]),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(20),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                        child: Container(
                          height: getProportionateScreenHeight(55),
                          decoration: BoxDecoration(
                            color: transparent,
                            border: Border.all(
                              color: orange,
                            ),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(10)),
                          ),
                          child: Center(
                              child: Text(
                            'Back',
                            style: GoogleFonts.heebo(
                              color: lightBlack,
                              fontSize: getProportionateScreenWidth(16),
                            ),
                          )),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: getProportionateScreenWidth(10),
                    ),
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                        child: Container(
                          height: getProportionateScreenHeight(55),
                          decoration: BoxDecoration(
                            color: orange,
                            border: Border.all(
                              color: transparent,
                            ),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(10)),
                          ),
                          child: Center(
                              child: Text(
                            'Continue',
                            style: GoogleFonts.heebo(
                              color: white,
                              fontSize: getProportionateScreenWidth(16),
                            ),
                          )),
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
