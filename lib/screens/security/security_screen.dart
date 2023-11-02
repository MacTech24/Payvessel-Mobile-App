import 'package:flutter/material.dart';
import 'package:payvessel_mobile_app/constants.dart';
import 'package:payvessel_mobile_app/screens/notifiaction/notification_screen_widget.dart';
import 'package:payvessel_mobile_app/screens/security/security_screen_widget.dart';
import 'package:payvessel_mobile_app/utils_size.dart';
import '../../globalWidgets/global_widgets.dart';

class SecurityScreen extends StatefulWidget {
  const SecurityScreen({Key? key}) : super(key: key);

  @override
  _SecurityScreenState createState() => _SecurityScreenState();
}

class _SecurityScreenState extends State<SecurityScreen> {
  bool pushStatus = false;
  bool emailStatus = false;
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    Size size = MediaQuery.of(context).size;
    return Container(
      child: Scaffold(
        appBar: reusableAppBar("Security", appbg),
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
                    SizedBox(
                      height: getProportionateScreenHeight(10),
                    ),
                    buildNotificationSwitch(
                      context: context,
                      text: "Biometric login",
                      status: pushStatus,
                      onToggle: (val) {
                        setState(() {
                          pushStatus = val;
                        });
                      },
                    ),
                    changePasswordButton(
                      context,
                      'Change Password',
                      () {
                        Navigator.pushNamed(context, '/changePassword');
                      },
                    ),
                    buildNotificationSwitch(
                      context: context,
                      text: "Two - Factor Authentication",
                      status: emailStatus,
                      onToggle: (val) {
                        setState(() {
                          emailStatus = val;
                        });
                      },
                    ),
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
