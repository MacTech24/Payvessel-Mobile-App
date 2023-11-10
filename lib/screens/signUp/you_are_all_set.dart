import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constants.dart';
import '../../globalWidgets/global_widgets.dart';
import '../../utils_size.dart';

class YouAreAllSet extends StatefulWidget {
  const YouAreAllSet({Key? key}) : super(key: key);

  @override
  _YouAreAllSetState createState() => _YouAreAllSetState();
}

class _YouAreAllSetState extends State<YouAreAllSet> {
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
                height: getProportionateScreenHeight(200),
                width: getProportionateScreenHeight(200),
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                ),
                child: Image.asset('assets/icons/withdrawal-successful.png'),
              ),
              SizedBox(
                height: getProportionateScreenHeight(30),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(14)),
                child: Column(
                  children: [
                    Text(
                      "You're All Set",
                      style: GoogleFonts.heebo(
                        fontSize: getProportionateScreenWidth(22),
                        color: orange,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      "Tou have succesfully created your\npayvessel account. Click proceed to\ncontinue to your dashboard",
                      style: GoogleFonts.heebo(
                        fontSize: getProportionateScreenWidth(18),
                        color: lightBlack,
                        fontWeight: FontWeight.normal,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: getProportionateScreenHeight(150),
              ),
              Column(
                children: [
                  buildButton(
                    context,
                    'filled',
                    orange,
                    white,
                    'Proceed',
                    getProportionateScreenHeight(55),
                    () {
                      Navigator.pushNamed(context, '/dashboard');
                    },
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(15),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
