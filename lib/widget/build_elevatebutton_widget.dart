import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pay68ui/screen/screens.dart';

class BuildElevatedButton extends StatelessWidget {
  BuildElevatedButton({
    Key? key,
    required this.title,
    required this.colorbackground,
    required this.colorBorder,
    required this.colortxt,
    required this.onPress,
  }) : super(key: key);
  final String title;
  final Color colorbackground;
  final Color colortxt;
  final Color colorBorder;
  final VoidCallback? onPress;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPress,
      child: Text(
        title,
        style: TextStyle(
          fontSize: 16.sp,
          fontWeight: FontWeight.w700,
          fontFamily: 'Inter',
          color: colortxt,
        ),
      ),
      style: ElevatedButton.styleFrom(
          elevation: 0,
          minimumSize: Size(343.w, 48.h),
          backgroundColor: colorbackground,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(999),
          ),
          side: BorderSide(color: colorBorder)),
    );
  }
}
