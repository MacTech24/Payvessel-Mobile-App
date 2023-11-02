import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:payvessel_mobile_app/screens/login/login_widgets.dart';

import '../../constants.dart';
import '../../globalWidgets/global_widgets.dart';
import '../../utils_size.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
                  width: getProportionateScreenWidth(150),
                ),
              ),
              SizedBox(
                height: getProportionateScreenHeight(10),
              ),
              welcomeText(),
              loginText(),
              SizedBox(
                height: getProportionateScreenHeight(30),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(20)),
                child: Form(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            width: size.width,
                            alignment: Alignment.centerLeft,
                            child: reusableText("E-mail Address")),
                        buildTextField(
                            context,
                            "email",
                            'Enter your email address',
                            Icons.visibility_off,
                            (value) {},
                            (value) {},
                            () {}),
                        SizedBox(
                          height: getProportionateScreenHeight(20),
                        ),
                        Container(
                            width: size.width,
                            alignment: Alignment.centerLeft,
                            child: reusableText("Password")),
                        buildTextField(
                            context,
                            "password",
                            'Enter your email password',
                            Icons.visibility_off,
                            (value) {},
                            (value) {},
                            () {}),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Checkbox(
                                  checkColor: background,
                                  activeColor: orange,
                                  value: true,
                                  onChanged: (value) {},
                                ),
                                Text(
                                  "Stay signed in",
                                  style: GoogleFonts.heebo(
                                    color: lightBlack,
                                  ),
                                )
                              ],
                            ),
                            TextButton(
                                onPressed: () {},
                                child: Text(
                                  "Forgot Password?",
                                  style: GoogleFonts.heebo(
                                    color: orange,
                                    decoration: TextDecoration.underline,
                                  ),
                                ))
                          ],
                        ),
                        SizedBox(
                          height: getProportionateScreenHeight(100),
                        ),
                        loginButton(context, orange, background, "Sign In", () {
                          Navigator.of(context).pushNamed('/dashboard');
                        }),
                      ]),
                ),
              ),
              InkWell(
                onTap: () {
                  //Navigate to website for registration
                },
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: getProportionateScreenHeight(10),
                  ),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Not a member of payvessel? "),
                        Text(
                          "Sign up.",
                          style: GoogleFonts.heebo(
                            color: orange,
                          ),
                        )
                      ]),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
