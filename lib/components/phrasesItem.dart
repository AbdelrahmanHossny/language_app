import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:language_app1/components/subItem.dart';
import 'package:language_app1/model/ItemModel.dart';

class PharseItem extends StatelessWidget {
  const PharseItem({super.key, required this.number, required this.color});
  final ItemModel number;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15, left: 10.0, right: 10.0),
      child: Container(
        height: 100.h,
        color: color,
        child: Row(
          children: [Expanded(child: SubItem(number: number))],
        ),
      ),
    );
  }
}
