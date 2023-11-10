import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constants.dart';

import '../../utils_size.dart';

class SelectAccountType extends StatefulWidget {
  const SelectAccountType({Key? key}) : super(key: key);

  @override
  _SelectAccountTypeState createState() => _SelectAccountTypeState();
}

class _SelectAccountTypeState extends State<SelectAccountType> {
  int _selectedValue = 1;
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    Size size = MediaQuery.of(context).size;
    return Container(
      color: background,
      child: Scaffold(
        backgroundColor: appbg,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: size.height * 0.1,
              ),
              Container(
                alignment: Alignment.center,
                width: size.width,
                child: Image.asset(
                  "assets/images/payvesselLogo.png",
                  width: getProportionateScreenWidth(120),
                ),
              ),
              SizedBox(
                height: getProportionateScreenHeight(20),
              ),
              Text(
                'Select Account Type',
                style: GoogleFonts.heebo(
                  fontSize: getProportionateScreenWidth(18),
                  color: lightBlack,
                ),
              ),
              SizedBox(
                height: getProportionateScreenHeight(20),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(20)),
                child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(getProportionateScreenWidth(10)),
                  decoration: BoxDecoration(
                      color: white,
                      borderRadius: BorderRadius.all(
                          Radius.circular(getProportionateScreenWidth(15)))),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Radio(
                              value: 1,
                              groupValue: _selectedValue,
                              activeColor: orange,
                              onChanged: (value) {
                                setState(() {
                                  _selectedValue = value!;
                                });
                              }),
                          Text(
                            "Your Business is register with CAC",
                            style: GoogleFonts.heebo(
                                fontSize: getProportionateScreenWidth(14)),
                          )
                        ],
                      ),
                      _selectedValue == 1
                          ? Padding(
                              padding: EdgeInsets.only(
                                  left: getProportionateScreenWidth(40)),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "What you'll get",
                                    style: GoogleFonts.heebo(
                                      fontSize: getProportionateScreenWidth(16),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        bottom:
                                            getProportionateScreenHeight(20)),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Container(
                                          height:
                                              getProportionateScreenHeight(15),
                                          width:
                                              getProportionateScreenHeight(15),
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  const BorderRadius.all(
                                                      Radius.circular(15)),
                                              color: Color(0xFFB9F0BB),
                                              border: Border.all(
                                                color: green,
                                                width: 2,
                                              )),
                                          child: Icon(
                                            Icons.check,
                                            size:
                                                getProportionateScreenWidth(10),
                                            color: green,
                                          ),
                                        ),
                                        SizedBox(
                                          width: getProportionateScreenWidth(8),
                                        ),
                                        Text(
                                          'Generate static virtual account to receive\nmoney from your costumers',
                                          style: GoogleFonts.heebo(
                                            fontSize:
                                                getProportionateScreenWidth(12),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  //
                                  Padding(
                                    padding: EdgeInsets.only(
                                        bottom:
                                            getProportionateScreenHeight(20)),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Container(
                                          height:
                                              getProportionateScreenHeight(15),
                                          width:
                                              getProportionateScreenHeight(15),
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  const BorderRadius.all(
                                                      Radius.circular(15)),
                                              color: Color(0xFFB9F0BB),
                                              border: Border.all(
                                                color: green,
                                                width: 2,
                                              )),
                                          child: Icon(
                                            Icons.check,
                                            size:
                                                getProportionateScreenWidth(10),
                                            color: green,
                                          ),
                                        ),
                                        SizedBox(
                                          width: getProportionateScreenWidth(8),
                                        ),
                                        Text(
                                          'An account name that is the same as\nbusiness name',
                                          style: GoogleFonts.heebo(
                                            fontSize:
                                                getProportionateScreenWidth(12),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  //
                                  Padding(
                                    padding: EdgeInsets.only(
                                        bottom:
                                            getProportionateScreenHeight(20)),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Container(
                                          height:
                                              getProportionateScreenHeight(15),
                                          width:
                                              getProportionateScreenHeight(15),
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  const BorderRadius.all(
                                                      Radius.circular(15)),
                                              color: Color(0xFFB9F0BB),
                                              border: Border.all(
                                                color: green,
                                                width: 2,
                                              )),
                                          child: Icon(
                                            Icons.check,
                                            size:
                                                getProportionateScreenWidth(10),
                                            color: green,
                                          ),
                                        ),
                                        SizedBox(
                                          width: getProportionateScreenWidth(8),
                                        ),
                                        Text(
                                          'Daily settlement to your bank\naccount                           ',
                                          style: GoogleFonts.heebo(
                                            fontSize:
                                                getProportionateScreenWidth(12),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  //
                                  Padding(
                                    padding: EdgeInsets.only(
                                        bottom:
                                            getProportionateScreenHeight(20)),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Container(
                                          height:
                                              getProportionateScreenHeight(15),
                                          width:
                                              getProportionateScreenHeight(15),
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  const BorderRadius.all(
                                                      Radius.circular(15)),
                                              color: Color(0xFFB9F0BB),
                                              border: Border.all(
                                                color: green,
                                                width: 2,
                                              )),
                                          child: Icon(
                                            Icons.check,
                                            size:
                                                getProportionateScreenWidth(10),
                                            color: green,
                                          ),
                                        ),
                                        SizedBox(
                                          width: getProportionateScreenWidth(8),
                                        ),
                                        Text(
                                          'Tools to track your revenue , expenses\nand customer loyalty',
                                          style: GoogleFonts.heebo(
                                            fontSize:
                                                getProportionateScreenWidth(12),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        bottom:
                                            getProportionateScreenHeight(10)),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Container(
                                          height:
                                              getProportionateScreenHeight(15),
                                          width:
                                              getProportionateScreenHeight(15),
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  const BorderRadius.all(
                                                      Radius.circular(15)),
                                              color: Color(0xFFB9F0BB),
                                              border: Border.all(
                                                color: green,
                                                width: 2,
                                              )),
                                          child: Icon(
                                            Icons.check,
                                            size:
                                                getProportionateScreenWidth(10),
                                            color: green,
                                          ),
                                        ),
                                        SizedBox(
                                          width: getProportionateScreenWidth(8),
                                        ),
                                        Text(
                                          'Tools for your staffs to verify payment\neven when you are not present',
                                          style: GoogleFonts.heebo(
                                            fontSize:
                                                getProportionateScreenWidth(12),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            )
                          : Container(),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: getProportionateScreenHeight(10),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(20)),
                child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(getProportionateScreenWidth(10)),
                  decoration: BoxDecoration(
                      color: white,
                      borderRadius: BorderRadius.all(
                          Radius.circular(getProportionateScreenWidth(15)))),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Radio(
                              value: 2,
                              groupValue: _selectedValue,
                              activeColor: orange,
                              onChanged: (value) {
                                setState(() {
                                  _selectedValue = value!;
                                });
                              }),
                          Text(
                            "You are not CAC registered but you need a\ndedicated account for your business",
                            style: GoogleFonts.heebo(
                                fontSize: getProportionateScreenWidth(14)),
                          )
                        ],
                      ),
                      _selectedValue == 2
                          ? Padding(
                              padding: EdgeInsets.only(
                                  left: getProportionateScreenWidth(40)),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "What you'll get",
                                    style: GoogleFonts.heebo(
                                      fontSize: getProportionateScreenWidth(16),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        bottom:
                                            getProportionateScreenHeight(20)),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Container(
                                          height:
                                              getProportionateScreenHeight(15),
                                          width:
                                              getProportionateScreenHeight(15),
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  const BorderRadius.all(
                                                      Radius.circular(15)),
                                              color: Color(0xFFB9F0BB),
                                              border: Border.all(
                                                color: green,
                                                width: 2,
                                              )),
                                          child: Icon(
                                            Icons.check,
                                            size:
                                                getProportionateScreenWidth(10),
                                            color: green,
                                          ),
                                        ),
                                        SizedBox(
                                          width: getProportionateScreenWidth(8),
                                        ),
                                        Text(
                                          'Paperless setup of a dedicated personal\naccount for your business operations',
                                          style: GoogleFonts.heebo(
                                            fontSize:
                                                getProportionateScreenWidth(12),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  //

                                  //
                                  Padding(
                                    padding: EdgeInsets.only(
                                        bottom:
                                            getProportionateScreenHeight(20)),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Container(
                                          height:
                                              getProportionateScreenHeight(15),
                                          width:
                                              getProportionateScreenHeight(15),
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  const BorderRadius.all(
                                                      Radius.circular(15)),
                                              color: Color(0xFFB9F0BB),
                                              border: Border.all(
                                                color: green,
                                                width: 2,
                                              )),
                                          child: Icon(
                                            Icons.check,
                                            size:
                                                getProportionateScreenWidth(10),
                                            color: green,
                                          ),
                                        ),
                                        SizedBox(
                                          width: getProportionateScreenWidth(8),
                                        ),
                                        Text(
                                          'Daily settlement to your bank\naccount                           ',
                                          style: GoogleFonts.heebo(
                                            fontSize:
                                                getProportionateScreenWidth(12),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  //
                                  Padding(
                                    padding: EdgeInsets.only(
                                        bottom:
                                            getProportionateScreenHeight(20)),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Container(
                                          height:
                                              getProportionateScreenHeight(15),
                                          width:
                                              getProportionateScreenHeight(15),
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  const BorderRadius.all(
                                                      Radius.circular(15)),
                                              color: Color(0xFFB9F0BB),
                                              border: Border.all(
                                                color: green,
                                                width: 2,
                                              )),
                                          child: Icon(
                                            Icons.check,
                                            size:
                                                getProportionateScreenWidth(10),
                                            color: green,
                                          ),
                                        ),
                                        SizedBox(
                                          width: getProportionateScreenWidth(8),
                                        ),
                                        Text(
                                          'Tools to track your revenue , expenses\nand customer loyalty',
                                          style: GoogleFonts.heebo(
                                            fontSize:
                                                getProportionateScreenWidth(12),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        bottom:
                                            getProportionateScreenHeight(10)),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Container(
                                          height:
                                              getProportionateScreenHeight(15),
                                          width:
                                              getProportionateScreenHeight(15),
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  const BorderRadius.all(
                                                      Radius.circular(15)),
                                              color: Color(0xFFB9F0BB),
                                              border: Border.all(
                                                color: green,
                                                width: 2,
                                              )),
                                          child: Icon(
                                            Icons.check,
                                            size:
                                                getProportionateScreenWidth(10),
                                            color: green,
                                          ),
                                        ),
                                        SizedBox(
                                          width: getProportionateScreenWidth(8),
                                        ),
                                        Text(
                                          'Tools for your staffs to verify payment\neven when you are not present',
                                          style: GoogleFonts.heebo(
                                            fontSize:
                                                getProportionateScreenWidth(12),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            )
                          : Container(),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: getProportionateScreenHeight(70),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(20),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                        child: Container(
                          height: getProportionateScreenHeight(55),
                          decoration: BoxDecoration(
                            color: transparent,
                            border: Border.all(
                              color: orange,
                            ),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(10)),
                          ),
                          child: Center(
                              child: Text(
                            'Back',
                            style: GoogleFonts.heebo(
                              color: orange,
                              fontSize: getProportionateScreenWidth(16),
                            ),
                          )),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: getProportionateScreenWidth(10),
                    ),
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          Navigator.of(context).pushNamed('/youAreAllSet');
                        },
                        child: Container(
                          height: getProportionateScreenHeight(55),
                          decoration: BoxDecoration(
                            color: orange,
                            border: Border.all(
                              color: transparent,
                            ),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(10)),
                          ),
                          child: Center(
                              child: Text(
                            'Next',
                            style: GoogleFonts.heebo(
                              color: white,
                              fontSize: getProportionateScreenWidth(16),
                            ),
                          )),
                        ),
                      ),
                    )
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
