import 'package:flutter/material.dart';
import 'package:pay68ui/screen/screens.dart';
final Map<String, WidgetBuilder> routes = {
  SplahScreen.routeName: (context) => SplahScreen(),
  OnboardingScreen.routeName: (context) => OnboardingScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
  SignUpScreen.routeName: (context) => SignUpScreen(),
  ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
  ForgotPasswordOTPScreen.routeName: (context) => ForgotPasswordOTPScreen(),
  CreateNewPwScreen.routeName: (context) => CreateNewPwScreen(),
  ForgotPwSuccessScreen.routeName: (context) => ForgotPwSuccessScreen(),
};