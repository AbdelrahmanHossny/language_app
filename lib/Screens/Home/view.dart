import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:language_app1/Screens/Colors/view.dart';
import 'package:language_app1/Screens/Family_Members/view.dart';
import 'package:language_app1/Screens/Numbers/view.dart';
import 'package:language_app1/Screens/Phrases/view.dart';
import 'package:language_app1/components/category.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff533D35),
        title: Text(
          'Toku',
          style: TextStyle(fontSize: 25.sp, color: Colors.white),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 80),
        child: Column(
          children: [
            Category(
              color: Color(0xffFF9F37),
              text: 'Numbers',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (builder) {
                      return const NumbersPage();
                    },
                  ),
                );
              },
            ),
            Category(
              color: Color(0xff5D8B3E),
              text: 'Family Members',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (builder) {
                      return const F_MembersPage();
                    },
                  ),
                );
              },
            ),
            Category(
              color: Color(0xff854CAE),
              text: 'Colors',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (builder) {
                      return const ColorsPage();
                    },
                  ),
                );
              },
            ),
            Category(
              color: Color(0xff39A2DB),
              text: 'Phrases',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (builder) {
                      return const PhrasesPage();
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
