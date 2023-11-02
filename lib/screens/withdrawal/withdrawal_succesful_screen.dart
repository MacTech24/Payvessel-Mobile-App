import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constants.dart';
import '../../globalWidgets/global_widgets.dart';
import '../../utils_size.dart';

class WithdrawalSuccesfulScreen extends StatefulWidget {
  const WithdrawalSuccesfulScreen({Key? key}) : super(key: key);

  @override
  _WithdrawalSuccesfulScreenState createState() =>
      _WithdrawalSuccesfulScreenState();
}

class _WithdrawalSuccesfulScreenState extends State<WithdrawalSuccesfulScreen> {
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
                      "Withdrawal Successful!",
                      style: GoogleFonts.heebo(
                        fontSize: getProportionateScreenWidth(20),
                        color: orange,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      "Your funds have been settled in your bank account!",
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
                height: getProportionateScreenHeight(100),
              ),
              Column(
                children: [
                  buildButton(
                    context,
                    'filled',
                    orange,
                    white,
                    'Proceed to Dashboard',
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
              SizedBox(
                height: getProportionateScreenHeight(50),
              )
            ],
          ),
        ),
      ),
    );
  }
}
