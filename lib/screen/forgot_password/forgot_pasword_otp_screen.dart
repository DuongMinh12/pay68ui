import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pay68ui/screen/screens.dart';
import 'package:pinput/pinput.dart';
import '../../components/add_all.dart';
import '../../widget/widgets.dart';
import 'components/row_containet_view_componnents.dart';

class ForgotPasswordOTPScreen extends StatelessWidget {
  const ForgotPasswordOTPScreen({Key? key}) : super(key: key);
  static String routeName = 'forgotPasswordOTPScreen';

  @override
  Widget build(BuildContext context) {
    return BackgroundWidget(
        appbar: AppBarTitle(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 14.h,
            ),
            rowContainerView(kMainCl, kMainCl, clgreycontainer),
            SizedBox(
              height: 40.h,
            ),
            Text(
              'Verify email code',
              style: txt20w800!.copyWith(fontWeight: FontWeight.w600),
            ),
            Padding(
              padding: EdgeInsets.only(top: 8.h, bottom: 24.h),
              child: Text(
                'Press the “Send Code” button and enter the code you received in your mailbox.',
                style: txt14w400,
              ),
            ),
            PinputWidget(),
            SizedBox(
              height: 24.h,
            ),
            OutlinedButton(onPressed: (){}, child: Text(
              'Send Code',
              style: TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.w600,
                fontFamily: 'Inter',
                color: Colors.black,
              ),),
            style: OutlinedButton.styleFrom(
                elevation: 0,
                minimumSize: Size(343.w, 48.h),
                backgroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(999),
                ),
                side: BorderSide(color: kMainCl)
            ),),
            Spacer(),
            BuildElevatedButton(
              title: 'Continue',
              colorbackground: kMainCl,
              colorBorder: Colors.transparent,
              colortxt: Colors.white,
              onPress: () {
                Navigator.pushNamed(context, CreateNewPwScreen.routeName);
              },
            ),
            SizedBox(
              height: 34.h,
            )
          ],
        ));
  }
}
