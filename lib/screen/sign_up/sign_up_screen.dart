import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pay68ui/screen/screens.dart';
import 'package:pay68ui/widget/widgets.dart';
import '../../components/add_all.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({Key? key}) : super(key: key);
  static String routeName = 'signUpScreen';
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
                  'Sign up',
                  style: txt20w800,
                ),
                SizedBox(
                  height: 32.h,
                ),
                buildColumnTextFormfile('Email ', 'Enter your email address'),
                buildColumnTextFormfile('Password ', 'Enter your password'),
                buildColumnTextFormfile('Confirm password ', 'Enter your password'),
                buildColumnTextFormfile('Phone number ', 'Enter your phone number'),
                CheckboxCustom(),
                BuildElevatedButton(
                  title: 'Sign up',
                  colorbackground: kMainCl,
                  colorBorder: Colors.transparent,
                  colortxt: Colors.white,
                  onPress: () {},
                ),
              ],
            ),
            Positioned(
                bottom: 16,
                child: Row(
                  children: [
                    Text(
                      'Already have account? ',
                      style: txt14w400,
                    ),
                    GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, SignInScreen.routeName);
                        },
                        child: Text(
                          'Log in now',
                          style: txt14w600!.copyWith(color: kMainCl),
                        )),
                  ],
                ))
          ],
        ));
  }
}
