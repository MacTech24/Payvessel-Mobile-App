import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:payvessel_mobile_app/globalWidgets/global_widgets.dart';
import 'package:payvessel_mobile_app/models/virtual_account_model.dart';
import 'package:payvessel_mobile_app/screens/virtualAccount/virtual_account_widgets.dart';
import 'package:payvessel_mobile_app/utils_size.dart';
import '../../constants.dart';

class VirtualAccountScreen extends StatefulWidget {
  const VirtualAccountScreen({Key? key}) : super(key: key);

  @override
  _VirtualAccountScreenState createState() => _VirtualAccountScreenState();
}

class _VirtualAccountScreenState extends State<VirtualAccountScreen> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    Size size = MediaQuery.of(context).size;
    return Container(
      child: Scaffold(
        appBar: reusableAppBar("Virtual Accounts", appbg),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.all(getProportionateScreenHeight(10)),
                child: Container(
                  width: size.width,
                  height: size.height,
                  padding: EdgeInsets.all(getProportionateScreenWidth(15)),
                  decoration: const BoxDecoration(
                    color: white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      listHeading(),
                      SizedBox(
                        height: getProportionateScreenHeight(10),
                      ),
                      Expanded(
                        child: ListView.builder(
                            itemCount: virtualAccountList.length,
                            itemBuilder: (context, index) {
                              return GestureDetector(
                                onTap: () {
                                  showPersonalInfoDialog(context, index);
                                },
                                child: virtualAccountList[index],
                              );
                            }),
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

  void showPersonalInfoDialog(BuildContext context, int index) {
    Size size = MediaQuery.of(context).size;
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Container(
            width: size.width,
            padding: EdgeInsets.all(getProportionateScreenWidth(20)),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Icon(
                        Icons.close,
                        size: 18,
                        color: white,
                      ),
                      Text(
                        "Virtual Account Details",
                        style: GoogleFonts.heebo(
                          color: black,
                          fontSize: getProportionateScreenWidth(14),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                        child: const Icon(
                          Icons.close,
                          size: 18,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 10),
                  SizedBox(
                    height: getProportionateScreenHeight(10),
                  ),
                  //Account Name
                  Container(
                    margin: EdgeInsets.only(
                        bottom: getProportionateScreenHeight(10)),
                    width: double.infinity,
                    alignment: Alignment.centerLeft,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Account Name',
                          style: GoogleFonts.heebo(
                            color: black,
                            fontSize: 14,
                          ),
                          textAlign: TextAlign.left,
                        ),
                        Text(
                          virtualAccountList[index].name,
                          style: GoogleFonts.heebo(
                            color: black,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ],
                    ),
                  ),
                  //Account Number
                  Container(
                    margin: EdgeInsets.only(
                        bottom: getProportionateScreenHeight(10)),
                    width: double.infinity,
                    alignment: Alignment.centerLeft,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Account Number',
                          style: GoogleFonts.heebo(
                            color: black,
                            fontSize: 14,
                          ),
                          textAlign: TextAlign.left,
                        ),
                        Text(
                          virtualAccountList[index].accountNo,
                          style: GoogleFonts.heebo(
                            color: black,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ],
                    ),
                  ),
                  //Bank Name
                  Container(
                    margin: EdgeInsets.only(
                        bottom: getProportionateScreenHeight(10)),
                    width: double.infinity,
                    alignment: Alignment.centerLeft,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Bank Name',
                          style: GoogleFonts.heebo(
                            color: black,
                            fontSize: 14,
                          ),
                          textAlign: TextAlign.left,
                        ),
                        Text(
                          virtualAccountList[index].bank,
                          style: GoogleFonts.heebo(
                            color: black,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ],
                    ),
                  ),
                  //Bank Name
                  Container(
                    margin: EdgeInsets.only(
                        bottom: getProportionateScreenHeight(10)),
                    width: double.infinity,
                    alignment: Alignment.centerLeft,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Reference',
                          style: GoogleFonts.heebo(
                            color: black,
                            fontSize: 14,
                          ),
                          textAlign: TextAlign.left,
                        ),
                        Text(
                          virtualAccountList[index].reference,
                          style: GoogleFonts.heebo(
                            color: black,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(20),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      margin: EdgeInsets.symmetric(
                          horizontal: getProportionateScreenWidth(40)),
                      width: double.infinity,
                      height: getProportionateScreenHeight(50),
                      decoration: BoxDecoration(
                          color: lighterPink,
                          borderRadius: BorderRadius.all(Radius.circular(
                              getProportionateScreenWidth(10)))),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset('assets/icons/trans.png'),
                          SizedBox(
                            width: getProportionateScreenWidth(5),
                          ),
                          Text(
                            "Transactions",
                            style: GoogleFonts.heebo(
                              color: orange,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(5),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
