import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:language_app1/components/item.dart';
import 'package:language_app1/model/ItemModel.dart';

class ColorsPage extends StatelessWidget {
  const ColorsPage({super.key});
  final List<ItemModel> color = const [
    ItemModel(
      image: 'assets/images/colors/color_black.png',
      jpName: 'kuro',
      enName: 'black',
      sound: 'sounds/colors/b.wav',
    ),
    ItemModel(
      image: 'assets/images/colors/color_brown.png',
      jpName: 'chairo',
      enName: 'brown',
      sound: 'sounds/colors/brown.wav',
    ),
    ItemModel(
      image: 'assets/images/colors/color_dusty_yellow.png',
      jpName: 'kiiro',
      enName: 'dusty yellow',
      sound: 'sounds/colors/dy.wav',
    ),
    ItemModel(
      image: 'assets/images/colors/color_gray.png',
      jpName: 'haiiro',
      enName: 'gray',
      sound: 'sounds/colors/gray.wav',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, size: 24.sp, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: Color(0xff533D35),
        title: Text(
          'Colors',
          style: TextStyle(fontSize: 25.sp, color: Colors.white),
        ),
      ),
      body: ListView.builder(
        itemCount: color.length,
        itemBuilder: (context, index) {
          return Item(color: Color(0xff742699), item: color[index]);
        },
      ),
    );
  }
}
