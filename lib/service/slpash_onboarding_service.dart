import 'package:flutter/material.dart';

import '../screen/screens.dart';

void durationDelay(BuildContext context){
  Future.delayed(Duration(seconds: 3), ()=> Navigator.pushNamed(context, OnboardingScreen.routeName));
}