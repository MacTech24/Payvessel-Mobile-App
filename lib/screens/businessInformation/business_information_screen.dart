import 'package:flutter/material.dart';
import 'package:payvessel_mobile_app/constants.dart';
import 'package:payvessel_mobile_app/screens/businessInformation/business_information_screen_widget.dart';
import 'package:payvessel_mobile_app/utils_size.dart';

import '../../globalWidgets/global_widgets.dart';

class BusinessInformationScreen extends StatefulWidget {
  const BusinessInformationScreen({Key? key}) : super(key: key);

  @override
  _BusinessInformationScreenState createState() =>
      _BusinessInformationScreenState();
}

class _BusinessInformationScreenState extends State<BusinessInformationScreen> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    Size size = MediaQuery.of(context).size;
    return Container(
      child: Scaffold(
        appBar: reusableAppBar("Business Information", appbg),
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
                    Stack(
                      children: [
                        Container(
                          height: getProportionateScreenHeight(120),
                          width: getProportionateScreenHeight(120),
                          padding:
                              EdgeInsets.all(getProportionateScreenWidth(5)),
                          margin: EdgeInsets.symmetric(
                              vertical: getProportionateScreenHeight(15)),
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: lightPink,
                          ),
                          child: Container(
                            height: getProportionateScreenHeight(140),
                            width: getProportionateScreenHeight(140),
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: white,
                                image: DecorationImage(
                                  image: AssetImage(
                                    'assets/images/image-1.jpeg',
                                  ),
                                  fit: BoxFit.cover,
                                )),
                          ),
                        ),
                        Positioned(
                          right: 0,
                          bottom: -5,
                          child: Container(
                            padding:
                                EdgeInsets.all(getProportionateScreenWidth(8)),
                            margin: EdgeInsets.symmetric(
                                vertical: getProportionateScreenHeight(30)),
                            height: getProportionateScreenHeight(33),
                            width: getProportionateScreenHeight(33),
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: orange,
                            ),
                            child: Image.asset(
                              'assets/icons/pen.png',
                              color: white,
                            ),
                          ),
                        ),
                      ],
                    ),
                    businessInfo("Business Name", "De Le - Chaise LTD"),
                    businessInfo("Business Phone Number", "08067057524"),
                    businessInfo(
                        "Business E-mail Address", "Macyjanet@demomail.com"),
                    businessInfo("Business Industry", "Baking/Pastry"),
                    businessInfo("Business Address",
                        "15 Turkey Avenue, Farm town, Lagos State.")
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
