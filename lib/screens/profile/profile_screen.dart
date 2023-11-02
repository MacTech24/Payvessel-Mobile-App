import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:payvessel_mobile_app/constants.dart';
import 'package:payvessel_mobile_app/screens/login/login_widgets.dart';
import 'package:payvessel_mobile_app/utils_size.dart';

import '../../globalWidgets/global_widgets.dart';
import 'profile_screen_widget.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    Size size = MediaQuery.of(context).size;
    return Container(
      child: Scaffold(
        backgroundColor: appbg,
        appBar: reusableAppBar("Profile", appbg),
        body: Padding(
          padding: EdgeInsets.all(getProportionateScreenWidth(10)),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            reusableText("First Name"),
            profileInfo(context, "Jacob"),
            reusableText("Last Name"),
            profileInfo(context, "Jones"),
            reusableText("E-mail Address"),
            profileInfo(context, "Macyjanet@demo.com"),
            reusableText("Phone Number"),
            profileInfo(context, "08146585969"),
          ]),
        ),
      ),
    );
  }
}
