import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pay68ui/screen/screens.dart';

import '../../components/add_all.dart';
import '../../widget/widgets.dart';
import 'components/row_containet_view_componnents.dart';

class CreateNewPwScreen extends StatelessWidget {
  const CreateNewPwScreen({Key? key}) : super(key: key);
  static String routeName = 'createNewPwScreen';

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
                rowContainerView(kMainCl, kMainCl, kMainCl),
                SizedBox(
                  height: 40.h,
                ),
                Text(
                  'Create new password',
                  style: txt20w800!.copyWith(fontWeight: FontWeight.w600),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 8.h, bottom: 24.h),
                  child: Text(
                    'Enter the your new password for your account.',
                    style: txt14w400,
                  ),
                ),
                buildColumnTextFormFieldnotSign('New password', 'Enter new password'),
                buildColumnTextFormFieldnotSign('Confirm new password', 'Enter new password'),
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
                    Navigator.pushNamed(context, ForgotPwSuccessScreen.routeName);
                  },
                ))
          ],
        ));
  }
}