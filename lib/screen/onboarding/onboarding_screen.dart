import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pay68ui/components/add_all.dart';
import 'package:pay68ui/screen/screens.dart';
import '../../widget/widgets.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({Key? key}) : super(key: key);
  static String routeName = 'onboardingScreen';

  @override
  Widget build(BuildContext context) {
    return BackgroundWidget(
      appbar: AppBarDropDownOnly(),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 60.h,
          ),
          SizedBox(height: 242.h, width: 298.26.w, child: Image.asset(walletlogo)),
          SizedBox(
            height: 40.h,
          ),
          Text(
            'Welcome to Pay68',
            style: txt20w800,
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 12.h),
            child: Text(
              'Pay68 is a web3 wallet that provides services for electronic wallets and cryptocurrencies. It allows you to store, buy, sell, and exchange between money and currencies quickly and securely.',
              style: txt14w400,
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            height: 60.h,
          ),
          BuildElevatedButton(
              title: "Log in",
              colorbackground: kMainCl,
              colortxt: Colors.white,
              colorBorder: Colors.transparent,
              onPress: () {
                Navigator.pushNamed(context, SignInScreen.routeName);
              }),
          SizedBox(
            height: 12.h,
          ),
          BuildElevatedButton(
            title: "Sign up",
            colorbackground: Colors.white,
            colortxt: Colors.black,
            colorBorder: kMainCl,
            onPress: () {
              Navigator.pushNamed(context, SignUpScreen.routeName);
            },
          ),
          SizedBox(
            height: 14.h,
          )
        ],
      ),
    );
  }
}
