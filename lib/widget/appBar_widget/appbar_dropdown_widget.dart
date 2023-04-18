import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pay68ui/components/add_all.dart';

const List<String> list = <String>['EN', 'VN', 'JP',];

class AppBarDropDown extends StatefulWidget with PreferredSizeWidget {
  const AppBarDropDown({
    super.key,
  });

  @override
  State<AppBarDropDown> createState() => _AppBarDropDownState();

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}

class _AppBarDropDownState extends State<AppBarDropDown> {
  String dropdownValue = list.first;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(onPressed: (){
        Navigator.pop(context);
      },icon: Icon(Icons.arrow_back_ios_new_rounded, color: Colors.black,),),
      backgroundColor: Colors.white,
      elevation: 0,
      actions: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            border: Border.all(color: Colors.grey.shade300)
          ),
           alignment: Alignment.center,
          height: 40.h,
            width: 75.w,
            margin: EdgeInsets.symmetric(horizontal: 19, vertical: 8),
            child: DropdownButton<String>(
            value: dropdownValue,
            icon: Padding(
              padding: const EdgeInsets.only(left: 4.0),
              child: Icon(Icons.keyboard_arrow_down_sharp, color: Colors.black,),
            ),
            // elevation: 16,
            style: TextStyle(color: Colors.black, fontSize: 14.sp, fontWeight: FontWeight.w600),
            onChanged: (String? value) {
              // This is called when the user selects an item.
              setState(() {
                dropdownValue = value!;
              });
            },
            underline: SizedBox(),
            items: list.map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
          )
        )
      ],
    );
  }
}

///no leading
class AppBarDropDownOnly extends StatefulWidget with PreferredSizeWidget {
  const AppBarDropDownOnly({
    super.key,
  });

  @override
  State<AppBarDropDownOnly> createState() => _AppBarDropDownOnlyState();

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}

class _AppBarDropDownOnlyState extends State<AppBarDropDownOnly> {
  String dropdownValue = list.first;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      actions: [
        Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                border: Border.all(color: Colors.grey.shade300)
            ),
            alignment: Alignment.center,
            height: 40.h,
            width: 75.w,
            margin: EdgeInsets.symmetric(horizontal: 19, vertical: 8),
            child: DropdownButton<String>(
              value: dropdownValue,
              icon: Padding(
                padding: const EdgeInsets.only(left: 4.0),
                child: Icon(Icons.keyboard_arrow_down_sharp, color: Colors.black,),
              ),
              // elevation: 16,
              style: TextStyle(color: Colors.black, fontSize: 14.sp, fontWeight: FontWeight.w600),
              onChanged: (String? value) {
                // This is called when the user selects an item.
                setState(() {
                  dropdownValue = value!;
                });
              },
              underline: SizedBox(),
              items: list.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            )
        )
      ],
    );
  }
}

///Forgotpass AppBar

class AppBarTitle extends StatelessWidget with PreferredSizeWidget {
  const AppBarTitle({Key? key}) : super(key: key);

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(onPressed: (){
        Navigator.pop(context);
      }, icon: Icon(Icons.arrow_back_ios_new_rounded, color: Colors.black,)),
      title: Text('Forgot Password', style: txt20w800!.copyWith(fontWeight: FontWeight.w600, color: Colors.black),),
    );
  }
}
