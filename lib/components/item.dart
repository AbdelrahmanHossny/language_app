import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:language_app1/model/number.dart';

class Item extends StatelessWidget {
  const Item({super.key, required this.number});
  final Number number;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15, left: 10.0, right: 10.0),
      child: Container(
        height: 100.h,
        color: Color(0xffF7962F),
        child: Row(
          children: [
            Container(
              color: Color(0xffFFF3E0),
              child: Image(image: AssetImage(number.image)),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    number.jpName,
                    style: TextStyle(fontSize: 20.sp, color: Colors.white),
                  ),
                  Text(
                    number.enName,
                    style: TextStyle(fontSize: 20.sp, color: Colors.white),
                  ),
                ],
              ),
            ),
            Spacer(flex: 1),
            Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: Icon(Icons.play_arrow, size: 30.sp, color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
