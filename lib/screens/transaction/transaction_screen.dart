import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:payvessel_mobile_app/constants.dart';
import 'package:payvessel_mobile_app/screens/transaction/transaction-function.dart';
import 'package:payvessel_mobile_app/utils_size.dart';

import '../../globalWidgets/global_widgets.dart';

class TransactionScreen extends StatefulWidget {
  const TransactionScreen({Key? key}) : super(key: key);

  @override
  _TransactionScreenState createState() => _TransactionScreenState();
}

class _TransactionScreenState extends State<TransactionScreen> {
  bool isDropdownOpen = false;
  bool isTransactionEmpty = true;
  String selectedItem = 'Select an item';
  List<String> items = ["Text1", "Text2", "Text3", "Text4"];
  void toggleDropdown() {
    setState(() {
      isDropdownOpen = !isDropdownOpen;
    });
  }

  void selectItem(String item) {
    setState(() {
      selectedItem = item;
      isDropdownOpen = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    Size size = MediaQuery.of(context).size;
    return Container(
      child: Scaffold(
        backgroundColor: appbg,
        appBar: reusableAppBar("Transaction", appbg),
        body: isTransactionEmpty == true
            ? Padding(
                padding: EdgeInsets.all(getProportionateScreenWidth(10)),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: size.width,
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Expanded(
                                  flex: 2,
                                  child: Container(
                                    height: size.height * 0.055,
                                    padding: EdgeInsets.symmetric(
                                        horizontal:
                                            getProportionateScreenWidth(10)),
                                    decoration: BoxDecoration(
                                      color: white,
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(
                                          getProportionateScreenWidth(5),
                                        ),
                                      ),
                                    ),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Row(
                                              children: [
                                                Text(
                                                  "Total Transactions",
                                                  style: GoogleFonts.heebo(
                                                    color: lightBlack,
                                                    fontSize:
                                                        getProportionateScreenWidth(
                                                            14),
                                                  ),
                                                ),
                                                SizedBox(
                                                  width:
                                                      getProportionateScreenWidth(
                                                          5),
                                                ),
                                                Text(
                                                  "56",
                                                  style: GoogleFonts.heebo(
                                                    color: orange,
                                                    fontSize:
                                                        getProportionateScreenWidth(
                                                            16),
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                )
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                Container(
                                                  height:
                                                      getProportionateScreenHeight(
                                                          30),
                                                  width:
                                                      getProportionateScreenWidth(
                                                          1),
                                                  color: lightPink,
                                                ),
                                                SizedBox(
                                                  width:
                                                      getProportionateScreenWidth(
                                                          5),
                                                ),
                                                const Icon(
                                                  Icons.search,
                                                  color: orange,
                                                )
                                              ],
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: getProportionateScreenWidth(10),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: InkWell(
                                    onTap: () {
                                      TransactionFunction.showFilterInfoDialog(
                                          context);
                                    },
                                    child: Container(
                                      height: size.height * 0.055,
                                      padding: EdgeInsets.symmetric(
                                          horizontal:
                                              getProportionateScreenWidth(10)),
                                      decoration: BoxDecoration(
                                        color: orange,
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(
                                            getProportionateScreenWidth(5),
                                          ),
                                        ),
                                      ),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Image.asset(
                                                  'assets/icons/ph_funnel.png'),
                                              SizedBox(
                                                width:
                                                    getProportionateScreenWidth(
                                                        10),
                                              ),
                                              Text(
                                                "Filter",
                                                style: GoogleFonts.heebo(
                                                  color: white,
                                                  fontSize:
                                                      getProportionateScreenWidth(
                                                          14),
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: getProportionateScreenHeight(10),
                      ),
                      Container(
                        width: size.width,
                        height: getProportionateScreenHeight(50),
                        decoration: BoxDecoration(
                          color: white,
                          borderRadius: BorderRadius.all(
                              Radius.circular(getProportionateScreenWidth(5))),
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              prefixIcon: const Icon(
                                Icons.search,
                                color: lightPink,
                              ),
                              hintText: 'Search Specific Transactions',
                              hintStyle: TextStyle(
                                fontSize: getProportionateScreenWidth(14),
                                color: lightPink,
                              )),
                        ),
                      ),
                      SizedBox(
                        height: getProportionateScreenHeight(10),
                      ),
                      Expanded(
                          child: ListView.builder(
                              itemCount: 20, // put the length of the list here
                              physics: const BouncingScrollPhysics(),
                              itemBuilder: (BuildContext context, int index) {
                                return transactionCard(white);
                              }))
                    ]),
              )
            : Center(
                child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/icons/no-transaction-icon.png'),
                  SizedBox(
                    height: getProportionateScreenHeight(10),
                  ),
                  Text(
                    "You have not performed any\nTransactions yet",
                    style: GoogleFonts.heebo(
                      fontSize: getProportionateScreenWidth(14),
                    ),
                    textAlign: TextAlign.center,
                  )
                ],
              )),
      ),
    );
  }
}
