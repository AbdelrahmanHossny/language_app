import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:language_app1/model/ItemModel.dart';

class SubItem extends StatelessWidget {
  const SubItem({super.key, required this.number});
  final ItemModel number;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                number.jpName,
                style: TextStyle(fontSize: 15.sp, color: Colors.white),
              ),
              Text(
                number.enName,
                style: TextStyle(fontSize: 15.sp, color: Colors.white),
              ),
            ],
          ),
        ),
        Spacer(flex: 1),
        Padding(
          padding: const EdgeInsets.only(right: 20.0),
          child: IconButton(
            onPressed: () {
              final player = AudioPlayer();
              player.play(AssetSource(number.sound));
            },
            icon: Icon(Icons.play_arrow, size: 30.sp, color: Colors.white),
          ),
        ),
      ],
    );
  }
}
