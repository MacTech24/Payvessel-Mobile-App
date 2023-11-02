import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:payvessel_mobile_app/constants.dart';
import 'package:payvessel_mobile_app/utils_size.dart';

class SecondSplashScreen extends StatefulWidget {
  const SecondSplashScreen({Key? key}) : super(key: key);

  @override
  _SecondSplashScreenState createState() => _SecondSplashScreenState();
}

class _SecondSplashScreenState extends State<SecondSplashScreen> {
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
        child: Stack(
          alignment: Alignment.center,
          children: [
            Positioned(
              child: Center(
                child: Image.asset('assets/images/payvesselLogo.png'),
              ),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: Center(
                child: Image.asset('assets/images/Rectangle.png'),
              ),
            ),
          ],
        ));
  }

  void splashNav() async {
    await Future.delayed(
      Duration(seconds: 2),
    );
    setState(() {
      Navigator.pushNamedAndRemoveUntil(
          context, '/onboardingScreen', (route) => false);
    });
  }
}
