import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:payvessel_mobile_app/globalWidgets/global_widgets.dart';

import '../../constants.dart';

import '../../utils_size.dart';

class LoginFingerprintScreen extends StatefulWidget {
  const LoginFingerprintScreen({Key? key}) : super(key: key);

  @override
  _LoginFingerprintScreenState createState() => _LoginFingerprintScreenState();
}

class _LoginFingerprintScreenState extends State<LoginFingerprintScreen> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    Size size = MediaQuery.of(context).size;
    return Container(
      color: background,
      child: Scaffold(
        backgroundColor: background,
        body: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: getProportionateScreenHeight(20)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: size.height * 0.1,
              ),
              Container(
                alignment: Alignment.center,
                width: size.width,
                child: Image.asset(
                  "assets/images/payvesselLogo.png",
                  width: getProportionateScreenWidth(150),
                ),
              ),
              SizedBox(
                height: getProportionateScreenHeight(100),
              ),
              Container(
                height: getProportionateScreenHeight(100),
                width: getProportionateScreenHeight(100),
                decoration: BoxDecoration(
                  color: Colors.orange,
                  shape: BoxShape.circle,
                ),
                child: Image.asset('assets/icons/fingerprint.png'),
              ),
              SizedBox(
                height: getProportionateScreenHeight(100),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(14)),
                child: Column(
                  children: [
                    Text(
                      "Biometrics",
                      style: GoogleFonts.heebo(
                        fontSize: getProportionateScreenWidth(22),
                        color: orange,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "To secure your account click on “Enable Biometrics” to keep your account safe.",
                      style: GoogleFonts.heebo(
                        fontSize: getProportionateScreenWidth(13),
                        color: lightBlack,
                        fontWeight: FontWeight.normal,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: getProportionateScreenHeight(80),
              ),
              Column(
                children: [
                  buildButton(
                    context,
                    'filled',
                    orange,
                    white,
                    'Enable Biometrics',
                    getProportionateScreenHeight(55),
                    () {},
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(15),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Text(
                      "Skip for now",
                      style: GoogleFonts.heebo(
                        fontSize: getProportionateScreenWidth(16),
                        color: orange,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: getProportionateScreenHeight(50),
              )
            ],
          ),
        ),
      ),
    );
  }
}
