import 'package:flutter/material.dart';
import 'package:payvessel_mobile_app/screens/dashboard/dashboard.dart';
import 'package:payvessel_mobile_app/screens/helpAndSupport/help_and_support_screen.dart';
import 'package:payvessel_mobile_app/screens/login/login_screen.dart';
import 'package:payvessel_mobile_app/screens/onboardingScreen/onboarding_screen.dart';
import 'package:payvessel_mobile_app/screens/security/security_screen.dart';
import 'package:payvessel_mobile_app/screens/transaction/transaction_screen.dart';
import 'package:payvessel_mobile_app/screens/withdrawal/withdrawal_screen.dart';

import 'screens/businessInformation/business_information_screen.dart';
import 'screens/changePassword/change_password_screen.dart';
import 'screens/compliance/compliance_contact.dart';
import 'screens/compliance/compliance_document.dart';
import 'screens/compliance/compliance_profile.dart';
import 'screens/compliance/compliance_uploaded_successful.dart';
import 'screens/login/login_fingerprint_screen.dart';
import 'screens/notifiaction/notification_screen.dart';
import 'screens/profile/profile_screen.dart';
import 'screens/settings/settings_screens.dart';
import 'screens/splashScreen/second_splash_screen.dart';
import 'screens/transaction/transaction_details_screen.dart';
import 'screens/virtualAccount/virtual_account_screen.dart';
import 'screens/withdrawal/withdrawal_succesful_screen.dart';

final Map<String, WidgetBuilder> routes = {
  // '/': (context) => const SplashScreen(),
  '/secondSplashScreen': (context) => const SecondSplashScreen(),
  '/onboardingScreen': (context) => const OnboardingScreen(),
  '/loginScreen': (context) => const LoginScreen(),
  '/loginFingerprint': (context) => const LoginFingerprintScreen(),
  '/dashboard': (context) => const Dashboard(),
  '/transaction': (context) => const TransactionScreen(),
  '/settings': (context) => const SettingsScreen(),
  '/profile': (context) => const ProfileScreen(),
  '/complianceProfile': (context) => const ComplianceProfile(),
  '/complianceContact': (context) => const ComplianceContact(),
  '/complianceDocument': (context) => const ComplianceDocument(),
  '/complianceUploaded': (context) => const ComplianceUploadedSuccessful(),
  '/virtualAccount': (context) => const VirtualAccountScreen(),
  '/businessInfo': (context) => const BusinessInformationScreen(),
  '/withdrawal': (context) => const WithdrawalScreen(),
  '/notification': (context) => const NotificationScreen(),
  '/security': (context) => const SecurityScreen(),
  '/changePassword': (context) => const ChangePasswordScreen(),
  '/helpAndSupport': (context) => const HelpAndSupportScreen(),
  '/withdrawalSuccessful': (context) => const WithdrawalSuccesfulScreen(),
  '/transactionDetails': (context) => const TransactionDetailsScreen(),
};
