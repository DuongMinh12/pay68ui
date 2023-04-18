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
            onTap: (){
              setState(() {
                ischeck = !ischeck;
              });
            },
            child: AnimatedContainer(duration: Duration(milliseconds: 500),
            curve: Curves.fastLinearToSlowEaseIn,
            child: Icon(Icons.check, color: Colors.white,),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey.shade400, width: 1),
              color: ischeck? Colors.indigoAccent: Colors.white,
              borderRadius: BorderRadius.circular(2)
            ),),
          ),

         // Container(
         //   height: 24.h,
         //   width: 24.h,
         //   decoration: BoxDecoration(
         //     borderRadius: BorderRadius.circular(2),
         //     border: Border.all(color: Colors.grey.shade400)
         //   ),
         // ),
          SizedBox(width: 12.w,),
          Expanded(
              child: Text(
            'I certify that I am 18 years of age or older, and I agree to the User Agreement and Privacy Policy',
            style: txt14w400!.copyWith(color: Color(0xff98A2B3)),
          )),
        ],
      ),
    );
  }
}
