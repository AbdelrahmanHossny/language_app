import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:language_app1/components/item.dart';
import 'package:language_app1/model/ItemModel.dart';

class F_MembersPage extends StatelessWidget {
  const F_MembersPage({super.key});
  final List<ItemModel> familyMembers = const [
    ItemModel(
      image: 'assets/images/family_members/family_father.png',
      jpName: 'chichi',
      enName: 'father',
      sound: 'sounds/family_members/father.wav',
    ),
    ItemModel(
      image: 'assets/images/family_members/family_mother.png',
      jpName: 'haha',
      enName: 'mother',
      sound: 'sounds/family_members/mother.wav',
    ),
    ItemModel(
      image: 'assets/images/family_members/family_daughter.png',
      jpName: 'musume',
      enName: 'daughter',
      sound: 'sounds/family_members/daughter.wav',
    ),
    ItemModel(
      image: 'assets/images/family_members/family_son.png',
      jpName: 'musuko',
      enName: 'son',
      sound: 'sounds/family_members/son.wav',
    ),
    ItemModel(
      image: 'assets/images/family_members/family_grandfather.png',
      jpName: 'ojiisan',
      enName: 'grandfather',
      sound: 'sounds/family_members/grandfather.wav',
    ),
    ItemModel(
      image: 'assets/images/family_members/family_grandmother.png',
      jpName: 'obaasan',
      enName: 'grandmother',
      sound: 'sounds/family_members/grandmother.wav',
    ),
    ItemModel(
      image: 'assets/images/family_members/family_older_brother.png',
      jpName: 'niisan',
      enName: 'older brother',
      sound: 'sounds/family_members/ob.wav',
    ),
    ItemModel(
      image: 'assets/images/family_members/family_older_sister.png',
      jpName: 'ane',
      enName: 'older sister',
      sound: 'sounds/family_members/oldersister.wav',
    ),
    ItemModel(
      image: 'assets/images/family_members/family_younger_brother.png',
      jpName: 'otouto',
      enName: 'youngest brother',
      sound: 'sounds/family_members/yb.wav',
    ),
    ItemModel(
      image: 'assets/images/family_members/family_younger_sister.png',
      jpName: 'imouto',
      enName: 'youngest sister',
      sound: 'sounds/family_members/youngersister.wav',
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
          'Family Members',
          style: TextStyle(fontSize: 25.sp, color: Colors.white),
        ),
      ),
      body: ListView.builder(
        itemCount: familyMembers.length,
        itemBuilder: (context, index) {
          return Item(color: Color(0xff579137), item: familyMembers[index]);
        },
      ),
    );
  }
}
