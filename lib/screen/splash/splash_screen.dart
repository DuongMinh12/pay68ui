import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pay68ui/components/add_all.dart';
import 'package:pay68ui/screen/onboarding/onboarding_screen.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';

import '../../service/slpash_onboarding_service.dart';

class SplahScreen extends StatelessWidget {
  const SplahScreen({Key? key}) : super(key: key);
  static String routeName = 'splashScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: clbackground,
      body: AnimatedSplashScreen(
        // duration: 300000,
        backgroundColor: clbackground,
          splash: Image.asset(backgroundlogo),
          splashIconSize: 150.sp,
          nextScreen: OnboardingScreen()),
    );
  }
}