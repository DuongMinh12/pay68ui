import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../components/add_all.dart';

class CheckboxCustom extends StatefulWidget {
  const CheckboxCustom({Key? key}) : super(key: key);
  @override
  State<CheckboxCustom> createState() => _CheckboxCustomState();
}

class _CheckboxCustomState extends State<CheckboxCustom> {
  bool ischeck = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 24.h),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: () {
              setState(() {
                ischeck = !ischeck;
              });
            },
            child: AnimatedContainer(
              duration: Duration(milliseconds: 500),
              curve: Curves.fastLinearToSlowEaseIn,
              child: Icon(
                Icons.check,
                color: Colors.white,
              ),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.shade400, width: 1), color: ischeck ? Colors.indigoAccent : Colors.white, borderRadius: BorderRadius.circular(2)),
            ),
          ),
          SizedBox(
            width: 12.w,
          ),
          Expanded(
            child: RichText(
              text: TextSpan(
                  text: 'I certify that I am 18 years of age or older, and I agree to the ',
                  style: txt14w400,
                  children: [TextSpan(text: 'User Agreement', style: TextStyle(color: kMainCl,
                  decoration: TextDecoration.underline)),
                    TextSpan(text: ' and '),
                    TextSpan(text: 'Privacy Policy', style: TextStyle(color: kMainCl,
                    decoration: TextDecoration.underline))]),
            ),
          )
        ],
      ),
    );
  }
}
