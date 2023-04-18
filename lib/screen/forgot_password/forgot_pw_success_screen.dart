import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pay68ui/components/add_all.dart';
import 'package:pay68ui/screen/screens.dart';
import 'package:pay68ui/widget/background_widget.dart';
import 'package:pay68ui/widget/widgets.dart';

class ForgotPwSuccessScreen extends StatelessWidget {
  const ForgotPwSuccessScreen({Key? key}) : super(key: key);
  static String routeName = 'forgotPwSuccessScreen';

  @override
  Widget build(BuildContext context) {
    return BackgroundWidget(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 96.h,
                  width: 96.w,
                  child: Image.asset(correctlogo),
                ),
                SizedBox(
                  height: 16.h,
                ),
                Text(
                  'Change your password',
                  style: txt20w800,
                ),
                Text(
                  'successfully',
                  style: txt20w800,
                ),
              ],
            ),
            Positioned(
              bottom: 34,
                child: BuildElevatedButton(
              title: 'Go to Log in',
              colorbackground: kMainCl,
              colorBorder: Colors.transparent,
              colortxt: Colors.white,
              onPress: () {
                Navigator.pushNamed(context, SignInScreen.routeName);
              },
            ))
          ],
        ));
  }
}
