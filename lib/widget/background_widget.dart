import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pay68ui/widget/widgets.dart';

class BackgroundWidget extends StatelessWidget {
  BackgroundWidget({
    super.key,
    required this.child,
    this.appbar,
  });
  Widget child;
  PreferredSizeWidget? appbar;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: appbar,
        backgroundColor: Colors.white,
        // appBar: AppBar(),
        body: Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
          child: child,
        ),
      ),
    );
  }
}
