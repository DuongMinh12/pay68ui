import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pay68ui/widget/widgets.dart';

import '../components/add_all.dart';

Column buildColumnTextFormfile(String title, String titleTextFormFiedl) {
  return Column(
    children: [
      Row(
        children: [
          Text(
            title,
            style: txt14w600,
          ),
          Text(
            '*',
            style: txt14w600!.copyWith(color: Colors.red),
          )
        ],
      ),
      SizedBox(
        height: 12.h,
      ),
      BuildTextFormField(
        title: titleTextFormFiedl,
      ),
      SizedBox(
        height: 24.h,
      ),
    ],
  );
}

Column buildColumnTextFormFieldnotSign(
  String title,
  String titleTextff,
) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        title,
        style: txt14w600,
      ),
      SizedBox(
        height: 12.h,
      ),
      BuildTextFormField(
        title: titleTextff,
      ),
      SizedBox(
        height: 24.h,
      ),
    ],
  );
}
