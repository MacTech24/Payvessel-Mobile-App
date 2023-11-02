import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:payvessel_mobile_app/constants.dart';
import 'package:payvessel_mobile_app/utils_size.dart';

import 'second_splash_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    splashNav();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: transparent));
    Size size = MediaQuery.of(context).size;
    SizeConfig().init(context);
    return Container(
      height: size.height,
      width: size.width,
      color: background,
      child: Center(
        child: Image.asset('assets/images/logo.png'),
      ),
    );
  }

  void splashNav() async {
    await Future.delayed(
      Duration(seconds: 2),
    );
    setState(() {
      Navigator.pushNamedAndRemoveUntil(
          context, '/secondSplashScreen', (route) => false);
    });
  }
}
