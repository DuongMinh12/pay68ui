import 'package:flutter/material.dart';

import '../components/add_font.dart';

class BuildTextFormField extends StatefulWidget {
  const BuildTextFormField({
    super.key, required this.title,
  });

  final String title;
  @override
  State<BuildTextFormField> createState() => _BuildTextFormFieldState();
}

class _BuildTextFormFieldState extends State<BuildTextFormField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(vertical: 17, horizontal: 16),
          hintText: widget.title,
          hintStyle: txt14w400,
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade300),
            borderRadius: BorderRadius.circular(8),
          ),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(width: 1, color: Colors.blue),
              borderRadius: BorderRadius.circular(8)
          )
      ),
    );
  }
}