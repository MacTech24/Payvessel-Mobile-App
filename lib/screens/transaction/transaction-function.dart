import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:payvessel_mobile_app/screens/transaction/transaction_screen_widget.dart';

import '../../constants.dart';
import '../../globalWidgets/global_widgets.dart';
import '../../utils_size.dart';

class TransactionFunction {
  static void showFilterInfoDialog(BuildContext context) {
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
                        "Personal Information Document",
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
                  SizedBox(
                    height: getProportionateScreenHeight(10),
                  ),
                  //
                  filterTransactionInfo(
                    context,
                    "Status - ",
                    "All Transactions",
                    () {},
                  ),
                  //
                  filterTransactionInfo(
                    context,
                    "Date Period - ",
                    "All Time",
                    () {},
                  ),
                  //
                  filterTransactionInfo(
                    context,
                    "Transaction Type - ",
                    "All Transaction",
                    () {},
                  ),
                  //
                  SizedBox(
                    height: getProportionateScreenHeight(5),
                  ),
                  buildButton(
                    context,
                    'filled',
                    orange,
                    white,
                    'Filter',
                    getProportionateScreenHeight(50),
                    () {},
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
