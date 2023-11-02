import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constants.dart';
import '../../globalWidgets/global_widgets.dart';
import '../../utils_size.dart';

class TransactionDetailsScreen extends StatefulWidget {
  const TransactionDetailsScreen({Key? key}) : super(key: key);

  @override
  _TransactionDetailsScreenState createState() =>
      _TransactionDetailsScreenState();
}

class _TransactionDetailsScreenState extends State<TransactionDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    Size size = MediaQuery.of(context).size;
    return Container(
      child: Scaffold(
        backgroundColor: appbg,
        appBar: reusableAppBar("Transaction Details", appbg),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.all(getProportionateScreenHeight(10)),
                child: Container(
                  width: size.width,
                  padding: EdgeInsets.all(getProportionateScreenHeight(15)),
                  decoration: const BoxDecoration(
                    color: white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  child: Column(
                    children: [
                      transDetails(context, "Name", "Macy Janet"),
                      transDetails(context, "Virtual Account", "0123456789"),
                      transDetails(
                          context, "Sender Bank Name", "Paycom (Opay)"),
                      transDetails(context, "Sender Name", "James Reid"),
                      transDetails(
                          context, "Sender Account Number", "0123456789"),
                      transDetails(context, "Amount", "N5000.00"),
                      transDetails(context, "Time", "12:22 PM"),
                      transDetails(context, "Date", "02-10-2023"),
                      transDetails(context, "Status", "Successful"),
                      transDetails1(
                        context,
                        "Reference",
                        "S23C4VTBERTE4YUOFB6W7Y",
                        () {
                          //Enter the copy code here
                        },
                      ),
                      transDetails1(
                        context,
                        "Session ID",
                        "1000003930303038737713456783",
                        () {
                          //Enter the copy code here
                        },
                      ),
                      SizedBox(
                        height: getProportionateScreenHeight(20),
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              height: getProportionateScreenHeight(55),
                              decoration: BoxDecoration(
                                color: lighterPink,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(
                                    getProportionateScreenWidth(5),
                                  ),
                                ),
                              ),
                              child: Center(
                                  child: Text(
                                "Report an Issue",
                                style: GoogleFonts.heebo(
                                  fontSize: getProportionateScreenWidth(12),
                                  color: orange,
                                ),
                              )),
                            ),
                          ),
                          SizedBox(
                            width: getProportionateScreenWidth(10),
                          ),
                          Expanded(
                            child: InkWell(
                              onTap: () {},
                              child: Container(
                                height: getProportionateScreenHeight(55),
                                decoration: BoxDecoration(
                                  color: orange,
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(
                                      getProportionateScreenWidth(5),
                                    ),
                                  ),
                                ),
                                child: Center(
                                    child: Text(
                                  "Share Receipt",
                                  style: GoogleFonts.heebo(
                                    fontSize: getProportionateScreenWidth(12),
                                    color: white,
                                  ),
                                )),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
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

Widget transDetails(BuildContext context, String title, String value) {
  Size size = MediaQuery.of(context).size;
  return Padding(
    padding: EdgeInsets.only(bottom: getProportionateScreenHeight(10)),
    child: Container(
      width: size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: GoogleFonts.heebo(
                  color: lightBlack,
                  fontSize: getProportionateScreenWidth(13),
                ),
              ),
              Text(value,
                  style: GoogleFonts.heebo(
                    color: black,
                    fontSize: getProportionateScreenWidth(13),
                  )),
            ],
          )
        ],
      ),
    ),
  );
}

Widget transDetails1(
    BuildContext context, String title, String value, void Function()? onTap) {
  Size size = MediaQuery.of(context).size;
  return Padding(
    padding: EdgeInsets.only(bottom: getProportionateScreenHeight(10)),
    child: Container(
      width: size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(title,
                  style: GoogleFonts.heebo(
                      color: lightBlack,
                      fontSize: getProportionateScreenWidth(13))),
              Row(
                children: [
                  Text(value,
                      style: GoogleFonts.heebo(
                          color: black,
                          fontSize: getProportionateScreenWidth(13))),
                  SizedBox(
                    width: getProportionateScreenWidth(8),
                  ),
                  GestureDetector(
                    onTap: onTap,
                    child: Image.asset('assets/icons/copy.png'),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    ),
  );
}
