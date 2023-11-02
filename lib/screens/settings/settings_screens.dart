import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:payvessel_mobile_app/constants.dart';
import 'package:payvessel_mobile_app/screens/settings/settings_widgets.dart';
import 'package:payvessel_mobile_app/utils_size.dart';

import '../../globalWidgets/global_widgets.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    Size size = MediaQuery.of(context).size;
    return Container(
      color: white,
      child: Scaffold(
        backgroundColor: appbg,
        appBar: reusableAppBar("Settings", appbg),
        body: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(10),
            vertical: getProportionateScreenHeight(10),
          ),
          child: Column(
            children: [
              settingProfileInfoCard(context),
              Padding(
                padding: EdgeInsets.symmetric(
                    vertical: getProportionateScreenHeight(10)),
                child: Row(
                  children: [
                    blackCard(
                      context,
                      'assets/icons/switch.png',
                      "Switch Businesses",
                    ),
                    SizedBox(
                      width: getProportionateScreenWidth(10),
                    ),
                    blackCard(
                      context,
                      'assets/icons/add.png',
                      'Add A New Business',
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: getProportionateScreenHeight(5),
              ),
              settingsFeatureCard(
                context,
                "assets/icons/profile.png",
                "Profile",
                () {
                  Navigator.pushNamed(context, "/profile");
                },
              ),
              settingsFeatureCard(
                context,
                "assets/icons/compliance.png",
                "Compliance",
                () {
                  Navigator.pushNamed(context, '/complianceProfile');
                },
              ),
              settingsFeatureCard(
                context,
                "assets/icons/virtual-account.png",
                "Virtual Account",
                () {},
              ),
              settingsFeatureCard(
                context,
                "assets/icons/business-info.png",
                "Business Information",
                () {
                  Navigator.pushNamed(context, '/businessInfo');
                },
              ),
              settingsFeatureCard(
                context,
                "assets/icons/withdrawal.png",
                "Withdrawal",
                () {},
              ),
              settingsFeatureCard(
                context,
                "assets/icons/security.png",
                "Security",
                () {},
              ),
              settingsFeatureCard(
                context,
                "assets/icons/help-support.png",
                "Help and Support",
                () {},
              ),
              SizedBox(
                height: getProportionateScreenHeight(15),
              ),
              InkWell(
                onTap: () {
                  // You can logout here
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("assets/icons/logout.png"),
                    SizedBox(
                      width: getProportionateScreenWidth(5),
                    ),
                    Text(
                      "Log Out",
                      style: GoogleFonts.heebo(
                          color: Colors.red,
                          fontSize: getProportionateScreenWidth(16)),
                    ),
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
