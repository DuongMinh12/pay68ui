import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pay68ui/screen/screens.dart';
import 'package:pay68ui/widget/widgets.dart';
import '../../components/add_all.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);
  static String routeName = 'signInScreen';

  @override
  Widget build(BuildContext context) {
    return BackgroundWidget(
        appbar: AppBarDropDown(),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Login',
                  style: txt20w800,
                ),
                Padding(
                    padding: EdgeInsets.only(top: 12.h, bottom: 40.h),
                    child: Text(
                      'Enter your email address and password to log in your account that you created',
                      style: txt14w400,
                    )),
                buildColumnTextFormFieldnotSign('Email', 'Enter your email address'),
                buildColumnTextFormFieldnotSign('Password', 'Enter your password'),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, ForgotPasswordScreen.routeName);
                  },
                  child: Container(
                    alignment: AlignmentDirectional.centerEnd,
                    padding: EdgeInsets.only(bottom: 24),
                    child: Text(
                      'Forgot Password?',
                      style: txt14w600!.copyWith(color: clgreyhinttxt),
                    ),
                  ),
                ),
                BuildElevatedButton(
                  title: 'Login',
                  colorbackground: kMainCl,
                  colorBorder: Colors.transparent,
                  colortxt: Colors.white,
                  onPress: () {},
                )
              ],
            ),
            Positioned(
                bottom: 34.h,
                child: Row(
                  children: [
                    Text(
                      'Doesn’t have account? ',
                      style: txt14w400,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, SignUpScreen.routeName);
                      },
                      child: Text(
                        'Sign up now',
                        style: txt14w400!.copyWith(color: kMainCl, fontWeight: FontWeight.w600),
                      ),
                    )
                  ],
                ))
          ],
        ));
  }
}
