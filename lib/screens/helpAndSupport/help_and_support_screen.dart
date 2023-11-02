import 'package:flutter/material.dart';
import 'package:payvessel_mobile_app/constants.dart';
import 'package:payvessel_mobile_app/screens/helpAndSupport/help_and_support_screen_widget.dart';

import 'package:payvessel_mobile_app/utils_size.dart';
import '../../globalWidgets/global_widgets.dart';

class HelpAndSupportScreen extends StatefulWidget {
  const HelpAndSupportScreen({Key? key}) : super(key: key);

  @override
  _HelpAndSupportScreenState createState() => _HelpAndSupportScreenState();
}

class _HelpAndSupportScreenState extends State<HelpAndSupportScreen> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    Size size = MediaQuery.of(context).size;
    return Container(
      child: Scaffold(
        appBar: reusableAppBar("Help & Support", appbg),
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
                      helpAndSupportCard1(
                        context,
                        'assets/icons/chat-with-customer-suport.png',
                        'Chat with Customer Support',
                        'Talk to a payvessel support agent',
                        'assets/icons/arrow-forward-ios.png',
                        () {},
                      ),

                      helpAndSupportCard2(
                        context,
                        'assets/icons/faqs.png',
                        'FAQs',
                        'assets/icons/arrow-forward-ios.png',
                        () {},
                      ),
                      helpAndSupportCard2(
                        context,
                        'assets/icons/join-our-whatsapp-community.png',
                        'Join Our Whatsapp Community',
                        'assets/icons/arrow-forward-ios.png',
                        () {},
                      ),
                      helpAndSupportCard2(
                        context,
                        'assets/icons/payvessel-documentation.png',
                        'Payvessel Documentation',
                        'assets/icons/payvessel-doc.png',
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
