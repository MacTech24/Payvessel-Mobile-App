import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constants.dart';
import '../../utils_size.dart';

class VirtualAccountCard extends StatelessWidget {
  VirtualAccountCard({
    super.key,
    required this.name,
    required this.accountNo,
    required this.bank,
    this.reference,
    this.onTap,
  });

  String name;
  String accountNo;
  String bank;
  String? reference;
  void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: getProportionateScreenHeight(10)),
      child: Container(
        padding: EdgeInsets.symmetric(
            vertical: getProportionateScreenWidth(12),
            horizontal: getProportionateScreenWidth(10)),
        width: double.infinity,
        decoration: const BoxDecoration(
            color: appbg, borderRadius: BorderRadius.all(Radius.circular(5))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: onTap,
              child: Container(
                width: 75,
                child: Text(
                  name,
                  style: GoogleFonts.heebo(
                    color: lightBlack,
                    fontSize: getProportionateScreenWidth(12),
                    fontWeight: FontWeight.w500,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
            Text(
              accountNo,
              style: GoogleFonts.heebo(
                color: lightBlack,
                fontSize: getProportionateScreenWidth(12),
                fontWeight: FontWeight.w500,
              ),
              overflow: TextOverflow.ellipsis,
            ),
            Text(bank,
                style: GoogleFonts.heebo(
                  color: lightBlack,
                  fontSize: getProportionateScreenWidth(12),
                  fontWeight: FontWeight.w500,
                )),
            Icon(
              Icons.arrow_forward_ios,
              color: orange,
              size: getProportionateScreenWidth(15),
            )
          ],
        ),
      ),
    );
  }
}

Widget listHeading() {
  return Container(
    padding: EdgeInsets.symmetric(
        vertical: getProportionateScreenWidth(12),
        horizontal: getProportionateScreenWidth(10)),
    width: double.infinity,
    decoration: const BoxDecoration(
        color: lighterPink, borderRadius: BorderRadius.all(Radius.circular(5))),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("Name",
            style: GoogleFonts.heebo(
              color: orange,
              fontSize: getProportionateScreenWidth(12),
              fontWeight: FontWeight.w500,
            )),
        Text("    Account No",
            style: GoogleFonts.heebo(
              color: orange,
              fontSize: getProportionateScreenWidth(12),
              fontWeight: FontWeight.w500,
            )),
        Text("Bank",
            style: GoogleFonts.heebo(
              color: orange,
              fontSize: getProportionateScreenWidth(12),
              fontWeight: FontWeight.w500,
            )),
        Text("  ",
            style: GoogleFonts.heebo(
              color: orange,
              fontSize: getProportionateScreenWidth(12),
              fontWeight: FontWeight.w500,
            )),
      ],
    ),
  );
}
