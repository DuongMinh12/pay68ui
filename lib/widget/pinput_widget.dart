import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pinput/pinput.dart';

class PinputWidget extends StatelessWidget {
  const PinputWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Pinput(
      length: 6,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      defaultPinTheme: PinTheme(
        height: 48.h,
        width: 47.17.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: Colors.grey.shade300),
        ),
      ),
      focusedPinTheme: PinTheme(
          height: 49.h,
          width: 48.17.h,
          textStyle: TextStyle(fontSize: 16),
          decoration: BoxDecoration(
            border: Border.all(color: Color.fromRGBO(114, 178, 238, 1)),
            borderRadius: BorderRadius.circular(8),
          )),
      submittedPinTheme: PinTheme(
          height: 48.h,
          width: 47.17.h,
          textStyle: TextStyle(fontSize: 16),
          decoration: BoxDecoration(
            color: Colors.lightBlueAccent.shade100,
            borderRadius: BorderRadius.circular(8),
          )),
    );
  }
}