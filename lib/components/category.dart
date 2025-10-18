import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: must_be_immutable
class Category extends StatelessWidget {
  Category({this.text, this.color, this.onTap, super.key});
  String? text;
  Color? color;
  VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 14),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          alignment: Alignment.center,
          width: double.infinity,
          height: 70.h,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(50.r),
          ),
          child: Text(
            text!,
            style: TextStyle(fontSize: 20.sp, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
