import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:payvessel_mobile_app/constants.dart';
import 'package:payvessel_mobile_app/globalWidgets/global_widgets.dart';
import 'package:payvessel_mobile_app/screens/onboardingScreen/onboarding_widgets.dart';
import 'package:payvessel_mobile_app/utils_size.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: transparent));
    SizeConfig().init(context);
    Size size = MediaQuery.of(context).size;
    return Container(
      color: background,
      height: size.height,
      width: size.width,
      child: Scaffold(
        body: Container(
          color: background,
          height: size.height,
          width: size.width,
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              Container(
                width: size.width,
                height: size.height * 0.55,
                child: Image(
                  image: AssetImage('assets/images/onboarding-img.png'),
                  fit: BoxFit.fill,
                ),
              ),
              Positioned(
                bottom: 0,
                child: Container(
                  width: size.width,
                  height: size.height * 0.68,
                  child: const Image(
                    image: AssetImage('assets/images/onboarding-fading.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                top: size.height * 0.43,
                child: Container(
                  width: getProportionateScreenWidth(147),
                  child: const Image(
                    image: AssetImage('assets/images/payvesselLogo.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                child: Container(
                  height: size.height * 0.5,
                  width: size.width,
                  // color: orange,
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: getProportionateScreenWidth(15)),
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(
                              top: getProportionateScreenHeight(20)),
                          width: size.width,
                          height: size.height * 0.06,
                          child: Stack(
                            alignment: Alignment.topCenter,
                            children: [
                              Positioned(
                                  left: size.width * 0.35,
                                  child: onboardingUsers(
                                      'assets/images/image-1.jpeg')),
                              onboardingUsers('assets/images/image-2.jpg'),
                              Positioned(
                                right: size.width * 0.35,
                                child: onboardingUsers(
                                    'assets/images/image-3.jpeg'),
                              ),
                            ],
                          ),
                        ),
                        trustText(),
                        SizedBox(
                          height: getProportionateScreenHeight(20),
                        ),
                        Container(
                          width: size.width * 0.75,
                          child: confidenceText(),
                        ),
                        SizedBox(
                          height: getProportionateScreenHeight(10),
                        ),
                        Container(
                          width: size.width * 0.85,
                          child: insuranceText(),
                        ),
                        SizedBox(
                          height: getProportionateScreenHeight(45),
                        ),
                        buildButton(
                          context,
                          'filled',
                          orange,
                          background,
                          "Get Started",
                          getProportionateScreenHeight(60),
                          () {
                            Navigator.of(context).pushNamed('/loginScreen');
                          },
                        ),
                        buildButton(
                          context,
                          'No-field',
                          orange,
                          orange,
                          "Sign in to Payvessel",
                          getProportionateScreenHeight(60),
                          () {},
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
