import 'package:flutter/material.dart';
import 'package:payvessel_mobile_app/constants.dart';
import 'package:payvessel_mobile_app/screens/dashboard/dashboard_widgets.dart';
import 'package:payvessel_mobile_app/utils_size.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int currentPageIndex = 0;
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    Size size = MediaQuery.of(context).size;
    return Container(
      color: dashboardBg,
      child: Scaffold(
        body: buildDashboardScreens(currentPageIndex),
        bottomNavigationBar: Container(
          height: getProportionateScreenHeight(75),
          width: size.width,
          color: white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  bottomNavButton(
                    context,
                    currentPageIndex == 0
                        ? "assets/icons/home-active.png"
                        : "assets/icons/home-inactive.png",
                    "Home",
                    currentPageIndex == 0 ? orange : black,
                    currentPageIndex == 0 ? orange : black,
                    currentPageIndex == 0 ? orange : transparent,
                    () {
                      setState(() {
                        currentPageIndex = 0;
                      });
                    },
                  ),
                  bottomNavButton(
                    context,
                    currentPageIndex == 1
                        ? "assets/icons/transaction-active.png"
                        : "assets/icons/transaction-inactive.png",
                    "Transaction",
                    currentPageIndex == 1 ? orange : black,
                    currentPageIndex == 1 ? orange : black,
                    currentPageIndex == 1 ? orange : transparent,
                    () {
                      setState(() {
                        currentPageIndex = 1;
                      });
                    },
                  ),
                  bottomNavButton(
                    context,
                    currentPageIndex == 2
                        ? "assets/icons/settings-active.png"
                        : "assets/icons/settings-inactive.png",
                    "Settings",
                    currentPageIndex == 2 ? orange : black,
                    currentPageIndex == 2 ? orange : black,
                    currentPageIndex == 2 ? orange : transparent,
                    () {
                      setState(() {
                        currentPageIndex = 2;
                      });
                    },
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
