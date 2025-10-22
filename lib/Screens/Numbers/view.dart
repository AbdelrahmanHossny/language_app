import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:language_app1/components/item.dart';
import 'package:language_app1/model/ItemModel.dart';

class NumbersPage extends StatelessWidget {
  const NumbersPage({super.key});

  final List<ItemModel> numbers = const [
    ItemModel(
      image: 'assets/images/numbers/number_one.png',
      jpName: 'ichi',
      enName: 'one',
      sound: 'sounds/numbers/number_one_sound.mp3',
    ),
    ItemModel(
      image: 'assets/images/numbers/number_two.png',
      jpName: 'ni',
      enName: 'two',
      sound: 'sounds/numbers/number_two_sound.mp3',
    ),
    ItemModel(
      image: 'assets/images/numbers/number_three.png',
      jpName: 'san',
      enName: 'three',
      sound: 'sounds/numbers/number_three_sound.mp3',
    ),
    ItemModel(
      image: 'assets/images/numbers/number_four.png',
      jpName: 'shi',
      enName: 'four',
      sound: 'sounds/numbers/number_four_sound.mp3',
    ),
    ItemModel(
      image: 'assets/images/numbers/number_five.png',
      jpName: 'go',
      enName: 'five',
      sound: 'sounds/numbers/number_five_sound.mp3',
    ),
    ItemModel(
      image: 'assets/images/numbers/number_six.png',
      jpName: 'roku',
      enName: 'six',
      sound: 'sounds/numbers/number_six_sound.mp3',
    ),
    ItemModel(
      image: 'assets/images/numbers/number_seven.png',
      jpName: 'Sebun',
      enName: 'seven',
      sound: 'sounds/numbers/number_seven_sound.mp3',
    ),
    ItemModel(
      image: 'assets/images/numbers/number_eight.png',
      jpName: 'hachi',
      enName: 'eight',
      sound: 'sounds/numbers/number_eight_sound.mp3',
    ),
    ItemModel(
      image: 'assets/images/numbers/number_nine.png',
      jpName: 'kyu',
      enName: 'nine',
      sound: 'sounds/numbers/number_nine_sound.mp3',
    ),
    ItemModel(
      image: 'assets/images/numbers/number_ten.png',
      jpName: 'ju',
      enName: 'ten',
      sound: 'sounds/numbers/number_ten_sound.mp3',
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
          'Numbers',
          style: TextStyle(fontSize: 25.sp, color: Colors.white),
        ),
      ),
      body: ListView.builder(
        itemCount: numbers.length,
        itemBuilder: (context, index) {
          return Item(color: Color(0xffF7962F), item: numbers[index]);
        },
      ),
    );
  }
}
