import 'package:flutter/material.dart';
import 'package:payvessel_mobile_app/route.dart';

import 'constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Payvessel',
      theme: ThemeData(
          fontFamily: "Heebo",
          primarySwatch: Colors.blue,
          appBarTheme: const AppBarTheme(
            foregroundColor: black,
          )),
      // home: MyHomePage(),
      routes: routes,
      // initialRoute: '/loginScreen',
      // initialRoute: '/loginFingerprint',
      // initialRoute: '/signupScreen',
      // initialRoute: '/signupBusiness',
      initialRoute: '/selectAccountType',
      // initialRoute: '/youAreAllSet',
      // initialRoute: '/complianceContact',
      // initialRoute: '/dashboard',
      // initialRoute: '/businessInfo',
      // initialRoute: '/transaction',
      // initialRoute: '/transactionDetails',
      // initialRoute: '/complianceDocument',
      // initialRoute: '/complianceProfile'
      //  initialRoute: '/complianceUploaded',
      // initialRoute: '/withdrawal',
      // initialRoute: '/withdrawalSuccessful',
      // initialRoute: '/notification',
      // initialRoute: '/security',
      // initialRoute: '/changePassword',
      // initialRoute: '/helpAndSupport',
      // initialRoute: '/virtualAccount',
    );
  }
}
