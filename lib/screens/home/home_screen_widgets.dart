import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:payvessel_mobile_app/constants.dart';
import 'package:badges/badges.dart' as badges;
import '../../utils_size.dart';

Widget appBar(
  BuildContext context,
) {
  Size size = MediaQuery.of(context).size;
  return Container(
    padding: EdgeInsets.only(
      left: getProportionateScreenWidth(10),
      right: getProportionateScreenWidth(15),
    ),
    height: size.height * 0.1,
    width: size.width,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(children: [
              Container(
                height: getProportionateScreenHeight(45),
                width: getProportionateScreenHeight(45),
                decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: white,
                    image: DecorationImage(
                      image: AssetImage("assets/images/image-1.jpeg"),
                      fit: BoxFit.cover,
                    )),
              ),
              SizedBox(
                width: getProportionateScreenWidth(10),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Hello, Macy ",
                    style: GoogleFonts.montserrat(
                        color: white,
                        fontWeight: FontWeight.bold,
                        fontSize: getProportionateScreenWidth(16)),
                  ),
                  Text(
                    "Here’s what’s going on in your account today.",
                    style: GoogleFonts.montserrat(
                      fontSize: getProportionateScreenWidth(11),
                      color: white,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              )
            ]),
            badges.Badge(
                badgeContent: Text(
                  '3',
                  style: GoogleFonts.montserrat(
                    color: white,
                  ),
                ),
                child: Image.asset(
                  "assets/icons/bell.png",
                  width: getProportionateScreenWidth(25),
                  color: white,
                ))
          ],
        ),
      ],
    ),
  );
}

Widget buidVirtualAndWithdrawCard(BuildContext context) {
  Size size = MediaQuery.of(context).size;
  return Container(
    padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
    height: size.height * 0.1,
    width: size.width,
    decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: lighterGrey.withOpacity(0.2),
            spreadRadius: 1,
            blurRadius: 2,
            offset: Offset(0, 1),
          )
        ],
        color: white,
        borderRadius:
            BorderRadius.all(Radius.circular(getProportionateScreenWidth(15)))),
    child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                height: getProportionateScreenHeight(35),
                width: getProportionateScreenHeight(35),
                child: Image.asset(
                  'assets/icons/virtual_account.png',
                ),
                decoration: BoxDecoration(
                  color: lighterPink,
                  shape: BoxShape.circle,
                ),
              ),
              Text(
                "Virtual Accounts",
                style: GoogleFonts.montserrat(
                    color: orange, fontSize: getProportionateScreenWidth(14)),
              ),
            ],
          ),
          Container(
            height: getProportionateScreenHeight(60),
            width: getProportionateScreenWidth(1),
            color: lighterGrey,
          ),
          Row(
            children: [
              Container(
                height: getProportionateScreenHeight(35),
                width: getProportionateScreenHeight(35),
                child: Image.asset('assets/icons/withdraw.png'),
                decoration: BoxDecoration(
                  color: lighterPink,
                  shape: BoxShape.circle,
                ),
              ),
              Text(
                "Withdraw",
                style: GoogleFonts.montserrat(
                    color: orange, fontSize: getProportionateScreenWidth(14)),
              ),
            ],
          ),
        ],
      )
    ]),
  );
}

Widget homeCard(String icon, String title, String amount) {
  return Container(
    padding: EdgeInsets.all(getProportionateScreenWidth(10)),
    alignment: Alignment.centerLeft,
    height: getProportionateScreenWidth(80),
    decoration: BoxDecoration(
        color: white,
        boxShadow: [
          BoxShadow(
            color: lighterGrey.withOpacity(0.2),
            spreadRadius: 1,
            blurRadius: 2,
            offset: Offset(0, 1),
          )
        ],
        borderRadius: BorderRadius.all(Radius.circular(10))),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Container(
              height: getProportionateScreenHeight(25),
              width: getProportionateScreenHeight(25),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(6)),
                color: orange,
              ),
              child: Image.asset(icon),
            ),
            SizedBox(
              width: getProportionateScreenWidth(10),
            ),
            Text(
              title,
              style: GoogleFonts.montserrat(
                color: lightBlack,
                fontSize: getProportionateScreenWidth(12),
              ),
            )
          ],
        ),
        SizedBox(
          height: getProportionateScreenHeight(10),
        ),
        Text(amount,
            style: GoogleFonts.montserrat(
              color: lightBlack,
              fontSize: getProportionateScreenWidth(16),
              fontWeight: FontWeight.bold,
            )),
      ],
    ),
  );
}

Widget recentTransaction(BuildContext context, void Function()? onTap) {
  return Padding(
    padding: EdgeInsets.symmetric(
      horizontal: getProportionateScreenWidth(20),
      vertical: getProportionateScreenHeight(10),
    ),
    child: Container(
      padding: EdgeInsets.all(
        getProportionateScreenWidth(8),
      ),
      width: double.infinity,
      decoration: BoxDecoration(
        color: white,
        boxShadow: [
          BoxShadow(
            color: lighterGrey.withOpacity(0.2),
            spreadRadius: 1,
            blurRadius: 2,
            offset: Offset(0, 1),
          )
        ],
        borderRadius: BorderRadius.all(
          Radius.circular(5),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("Recent Transaction",
              style: GoogleFonts.montserrat(
                color: lightBlack,
                fontSize: getProportionateScreenWidth(13),
                fontWeight: FontWeight.bold,
              )),
          InkWell(
            onTap: onTap,
            child: Text("View All",
                style: GoogleFonts.montserrat(
                  color: orange,
                  fontSize: getProportionateScreenWidth(13),
                  fontWeight: FontWeight.bold,
                )),
          )
        ],
      ),
    ),
  );
}
