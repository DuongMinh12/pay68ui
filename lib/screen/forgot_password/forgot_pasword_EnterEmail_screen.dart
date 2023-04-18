import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pay68ui/components/add_all.dart';
import 'package:pay68ui/widget/background_widget.dart';
import 'package:pay68ui/widget/widgets.dart';
import '../../components/add_font.dart';
import '../screens.dart';
import 'components/row_containet_view_componnents.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({Key? key}) : super(key: key);
  static String routeName = 'forgotPasswordScreen';

  @override
  Widget build(BuildContext context) {
    return BackgroundWidget(
        appbar: AppBarTitle(),
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 14.h,
                ),
                rowContainerView(kMainCl, clgreycontainer, clgreycontainer),
                SizedBox(
                  height: 40.h,
                ),
                Text(
                  'Enter your email address',
                  style: txt20w800!.copyWith(fontWeight: FontWeight.w600),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 8.h, bottom: 24.h),
                  child: Text(
                    'Enter the email address corresponding to your account.',
                    style: txt14w400,
                  ),
                ),
                buildColumnTextFormFieldnotSign('Email', 'Enter your email address'),
              ],
            ),
            Positioned(
                bottom: 34,
                child: BuildElevatedButton(
                  title: 'Continue',
                  colorbackground: kMainCl,
                  colorBorder: Colors.transparent,
                  colortxt: Colors.white,
                  onPress: () {
                  Navigator.pushNamed(context, ForgotPasswordOTPScreen.routeName);
                  },
                ))
          ],
        ));
  }
}
