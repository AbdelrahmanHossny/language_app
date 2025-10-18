import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:language_app1/components/item.dart';
import 'package:language_app1/model/number.dart';

class NumbersPage extends StatelessWidget {
  const NumbersPage({super.key});
  // final Number one = const Number(
  //   image: 'assets/images/numbers/number_one.png',
  //   jpName: 'ichi',
  //   enName: 'one',
  // );

  final List<Number> numbers = const [
    Number(
      image: 'assets/images/numbers/number_one.png',
      jpName: 'ichi',
      enName: 'one',
    ),
    Number(
      image: 'assets/images/numbers/number_two.png',
      jpName: 'ni',
      enName: 'two',
    ),
    Number(
      image: 'assets/images/numbers/number_three.png',
      jpName: 'san',
      enName: 'three',
    ),
    Number(
      image: 'assets/images/numbers/number_four.png',
      jpName: 'shi',
      enName: 'four',
    ),
    Number(
      image: 'assets/images/numbers/number_five.png',
      jpName: 'go',
      enName: 'five',
    ),
    Number(
      image: 'assets/images/numbers/number_six.png',
      jpName: 'roku',
      enName: 'six',
    ),
    Number(
      image: 'assets/images/numbers/number_seven.png',
      jpName: 'nana',
      enName: 'seven',
    ),
    Number(
      image: 'assets/images/numbers/number_eight.png',
      jpName: 'hachi',
      enName: 'eight',
    ),
    Number(
      image: 'assets/images/numbers/number_nine.png',
      jpName: 'kyu',
      enName: 'nine',
    ),
    Number(
      image: 'assets/images/numbers/number_ten.png',
      jpName: 'ju',
      enName: 'ten',
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
      body: ListView(
        children: [
          Item(number: numbers[0]),
          Item(number: numbers[1]),
          Item(number: numbers[2]),
          Item(number: numbers[3]),
          Item(number: numbers[4]),
          Item(number: numbers[5]),
          Item(number: numbers[6]),
          Item(number: numbers[7]),
          Item(number: numbers[8]),
          Item(number: numbers[9]),
        ],
      ),
    );
  }
}
