import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../components/add_all.dart';

Row rowContainerView(Color colo1, Color colo2, Color colo3) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Container(
        height: 4.h,
        width: 109.w,
        decoration: BoxDecoration(
            color: colo1,
            borderRadius: BorderRadius.circular(999)
        ),
      ),
      Container(
        height: 4.h,
        width: 109.w,
        decoration: BoxDecoration(
            color: colo2,
            borderRadius: BorderRadius.circular(999)
        ),
      ),
      Container(
        height: 4.h,
        width: 109.w,
        decoration: BoxDecoration(
            color: colo3,
            borderRadius: BorderRadius.circular(999)
        ),
      )
    ],
  );
}