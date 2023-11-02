import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:payvessel_mobile_app/constants.dart';
import 'package:payvessel_mobile_app/utils_size.dart';

import '../../globalWidgets/global_widgets.dart';
import 'home_screen_widgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isTransactionEmpty = false;
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    Size size = MediaQuery.of(context).size;
    return Container(
      color: dashboardBg,
      child: Scaffold(
        body: Container(
          child: Column(
            children: [
              Container(
                height: size.height * 0.38,
                child: Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    Container(
                      height: size.height * 0.33,
                      color: orange,
                    ),
                    Container(
                        height: size.height * 0.4,
                        child: Image.asset(
                          "assets/images/mask.png",
                          color: black,
                        )),
                    Positioned(
                      top: size.height * 0.1,
                      child: appBar(context),
                    ),
                    Positioned(
                      top: size.height * 0.18,
                      child: Container(
                        padding: EdgeInsets.only(
                          left: getProportionateScreenWidth(25),
                          right: getProportionateScreenWidth(15),
                        ),
                        width: size.width,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Account Balance",
                                      style: GoogleFonts.montserrat(
                                          color: white,
                                          fontSize:
                                              getProportionateScreenWidth(16)),
                                    ),
                                    SizedBox(
                                      height: getProportionateScreenHeight(10),
                                    ),
                                    Text(
                                      "₦334,000.00",
                                      style: GoogleFonts.montserrat(
                                        color: white,
                                        fontSize:
                                            getProportionateScreenWidth(25),
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                                Container(
                                  height: getProportionateScreenHeight(40),
                                  width: getProportionateScreenHeight(40),
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: white,
                                  ),
                                  child: Center(
                                    child: Icon(
                                      Icons.visibility_off,
                                      color: orange,
                                      size: getProportionateScreenWidth(18),
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      right: getProportionateScreenWidth(20),
                      left: getProportionateScreenWidth(20),
                      child: buidVirtualAndWithdrawCard(context),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: getProportionateScreenHeight(10),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(20)),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: homeCard(
                            'assets/icons/total-revenue.png',
                            "Total Revenue",
                            "₦554,000.00",
                          ),
                        ),
                        SizedBox(
                          width: getProportionateScreenWidth(10),
                        ),
                        Expanded(
                          child: homeCard(
                            'assets/icons/daily-revenue.png',
                            "Daily Revenue",
                            "₦43,000",
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: getProportionateScreenHeight(10),
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: homeCard(
                            'assets/icons/total-withdrawer.png',
                            "Total Withdrawer",
                            "₦220,000",
                          ),
                        ),
                        SizedBox(
                          width: getProportionateScreenWidth(10),
                        ),
                        Expanded(
                          child: homeCard(
                            'assets/icons/customers.png',
                            "Customers",
                            "32",
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              recentTransaction(
                context,
                () {
                  // Tap to view all recent transaction,
                },
              ),
              if (isTransactionEmpty)
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: getProportionateScreenWidth(20)),
                  child: Container(
                    alignment: Alignment.center,
                    width: double.infinity,
                    height: size.height * 0.21,
                    padding: EdgeInsets.all(getProportionateScreenWidth(10)),
                    decoration: BoxDecoration(
                      color: white,
                      borderRadius: BorderRadius.only(
                        topLeft:
                            Radius.circular(getProportionateScreenWidth(10)),
                        topRight:
                            Radius.circular(getProportionateScreenWidth(10)),
                      ),
                    ),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/icons/no-transaction-icon.png',
                          ),
                          SizedBox(
                            height: getProportionateScreenHeight(5),
                          ),
                          Text(
                            'You have not performed any\nTransactions yet',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.heebo(
                                fontSize: getProportionateScreenWidth(12)),
                          )
                        ]),
                  ),
                ),
              if (!isTransactionEmpty)
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: getProportionateScreenWidth(20)),
                  child: Container(
                    width: double.infinity,
                    height: size.height * 0.21,
                    padding: EdgeInsets.all(getProportionateScreenWidth(10)),
                    decoration: BoxDecoration(
                      color: white,
                      borderRadius: BorderRadius.only(
                        topLeft:
                            Radius.circular(getProportionateScreenWidth(10)),
                        topRight:
                            Radius.circular(getProportionateScreenWidth(10)),
                      ),
                    ),
                    child: ListView.builder(
                        itemCount: 10,
                        physics: BouncingScrollPhysics(),
                        padding: EdgeInsets.all(0),
                        itemBuilder: (BuildContext context, int index) {
                          return transactionCard(dashboardBg);
                        }),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
