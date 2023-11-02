import 'package:flutter/material.dart';
import 'package:payvessel_mobile_app/constants.dart';

import 'package:payvessel_mobile_app/utils_size.dart';
import '../../globalWidgets/global_widgets.dart';
import 'change_password_screen_widget.dart';

class ChangePasswordScreen extends StatefulWidget {
  const ChangePasswordScreen({Key? key}) : super(key: key);

  @override
  _ChangePasswordScreenState createState() => _ChangePasswordScreenState();
}

class _ChangePasswordScreenState extends State<ChangePasswordScreen> {
  bool pushStatus = false;
  bool emailStatus = false;
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    Size size = MediaQuery.of(context).size;
    return Container(
      child: Scaffold(
        appBar: reusableAppBar("Change Password", appbg),
        body: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: getProportionateScreenWidth(10),
              vertical: getProportionateScreenHeight(5)),
          child: SingleChildScrollView(
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
                      SizedBox(
                        height: getProportionateScreenHeight(10),
                      ),
                      // The children begins here
                      Align(
                          alignment: Alignment.centerLeft,
                          child: mediumReusableText('Current Password')),
                      buildTextField(
                        context,
                        'password',
                        'Current Password',
                        Icons.visibility_off,
                        (p0) {},
                        (p0) {},
                        () {},
                      ),
                      SizedBox(
                        height: getProportionateScreenHeight(10),
                      ),

                      //
                      Align(
                          alignment: Alignment.centerLeft,
                          child: mediumReusableText('New Password')),
                      buildTextField(
                        context,
                        'password',
                        'Enter New Password',
                        Icons.visibility_off,
                        (p0) {},
                        (p0) {},
                        () {},
                      ),
                      SizedBox(
                        height: getProportionateScreenHeight(10),
                      ),
                      //
                      Align(
                          alignment: Alignment.centerLeft,
                          child: mediumReusableText('Confirm Password')),
                      buildTextField(
                        context,
                        'password',
                        'Confirm Password',
                        Icons.visibility_off,
                        (p0) {},
                        (p0) {},
                        () {},
                      ),
                      SizedBox(
                        height: getProportionateScreenHeight(20),
                      ),

                      //
                      buildButton(
                        context,
                        'filled',
                        lightOrange.withOpacity(0.7),
                        white,
                        'Change Password',
                        getProportionateScreenHeight(55),
                        () {},
                      ),
                      SizedBox(
                        height: getProportionateScreenHeight(10),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
