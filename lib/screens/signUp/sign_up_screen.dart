import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:payvessel_mobile_app/screens/signUp/sign_up_screen_widget.dart';
import '../../constants.dart';
import '../../globalWidgets/global_widgets.dart';
import '../../utils_size.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
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
                        Container(
                            width: size.width,
                            alignment: Alignment.centerLeft,
                            child: smallReusableText("First Name")),
                        buildTextField(
                            context,
                            "firstName",
                            'Enter your First Name',
                            Icons.visibility_off,
                            (value) {},
                            (value) {},
                            () {}),
                        SizedBox(
                          height: getProportionateScreenHeight(5),
                        ),
                        //
                        Container(
                            width: size.width,
                            alignment: Alignment.centerLeft,
                            child: smallReusableText("Last Name")),
                        buildTextField(
                            context,
                            "lastName",
                            'Enter your Last Name',
                            Icons.visibility_off,
                            (value) {},
                            (value) {},
                            () {}),
                        SizedBox(
                          height: getProportionateScreenHeight(5),
                        ),
                        Container(
                            width: size.width,
                            alignment: Alignment.centerLeft,
                            child: smallReusableText("E-mail Address")),
                        buildTextField(
                            context,
                            "email",
                            'Enter your E-mail Address',
                            Icons.visibility_off,
                            (value) {},
                            (value) {},
                            () {}),
                        SizedBox(
                          height: getProportionateScreenHeight(5),
                        ),
                        //
                        Container(
                            width: size.width,
                            alignment: Alignment.centerLeft,
                            child: smallReusableText("Phone Number")),
                        buildTextField(
                            context,
                            "firstName",
                            'Enter your Phone Number',
                            Icons.visibility_off,
                            (value) {},
                            (value) {},
                            () {}),
                        SizedBox(
                          height: getProportionateScreenHeight(5),
                        ),
                        Container(
                            width: size.width,
                            alignment: Alignment.centerLeft,
                            child: smallReusableText("Password")),
                        buildTextField(
                            context,
                            "password",
                            'Enter your password',
                            Icons.visibility_off,
                            (value) {},
                            (value) {},
                            () {}),
                        SizedBox(
                          height: getProportionateScreenHeight(5),
                        ),
                        Container(
                            width: size.width,
                            alignment: Alignment.centerLeft,
                            child: smallReusableText("Confirm Password")),
                        buildTextField(
                            context,
                            "password",
                            'confirm password',
                            Icons.visibility_off,
                            (value) {},
                            (value) {},
                            () {}),
                        Row(
                          children: [
                            Checkbox(
                              checkColor: background,
                              activeColor: orange,
                              value: true,
                              onChanged: (value) {},
                            ),
                            Text(
                              "By clicking on the checkbox , you agree to payvessel's",
                              style: GoogleFonts.heebo(
                                color: lightBlack,
                                fontSize: getProportionateScreenHeight(13),
                              ),
                            )
                          ],
                        ),
                        Container(
                          alignment: Alignment.center,
                          width: double.infinity,
                          child: Text(
                            "Terms of acceptable use",
                            style: GoogleFonts.heebo(
                                color: orange,
                                fontSize: getProportionateScreenWidth(16)),
                          ),
                        ),
                        SizedBox(
                          height: getProportionateScreenHeight(10),
                        ),
                        loginButton(context, lightPink, background, "Sign Up",
                            () {
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
                        Text("Already have an account? "),
                        Text(
                          "Sign In.",
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
