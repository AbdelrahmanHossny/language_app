import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:language_app1/components/phrasesItem.dart';
import 'package:language_app1/model/ItemModel.dart';

class PhrasesPage extends StatelessWidget {
  const PhrasesPage({super.key});
  final List<ItemModel> phrases = const [
    ItemModel(
      jpName: 'Kimasu ka?',
      enName: 'Are you coming?',
      sound: 'sounds/phrases/are_you_coming.wav',
    ),
    ItemModel(
      jpName: 'Kōdoku o o wasurenaku',
      enName: 'Don\'t forget to subscribe',
      sound: 'sounds/phrases/dont_forget_to_subscribe.wav',
    ),
    ItemModel(
      jpName: 'Anime ga daisukidesu',
      enName: 'I love anime',
      sound: 'sounds/phrases/i_love_anime.wav',
    ),
    ItemModel(
      jpName: 'Puroguramingu ga daisukina ndesu',
      enName: 'I love programming',
      sound: 'sounds/phrases/i_love_programming.wav',
    ),
    ItemModel(
      jpName: 'Go kibun wa ikagadesu ka?',
      enName: 'How are you feeling?',
      sound: 'sounds/phrases/how_are_you_feeling.wav',
    ),
    ItemModel(
      jpName: 'Puroguramingu wa kantandesu',
      enName: 'Programming is easy',
      sound: 'sounds/phrases/programming_is_easy.wav',
    ),
    ItemModel(
      jpName: 'Anata no namae wa nanidesu ka?',
      enName: 'What is your name?',
      sound: 'sounds/phrases/what_is_your_name.wav',
    ),

    ItemModel(
      jpName: 'Doko ni iku no?',
      enName: 'Where are you going?',
      sound: 'sounds/phrases/where_are_you_going.wav',
    ),
    ItemModel(
      jpName: 'Hai, ikimasu',
      enName: 'Yes, I\'m coming',
      sound: 'sounds/phrases/yes_im_coming.wav',
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
          'Phrases',
          style: TextStyle(fontSize: 25.sp, color: Colors.white),
        ),
      ),
      body: ListView.builder(
        itemCount: phrases.length,
        itemBuilder: (context, index) {
          return PharseItem(color: Color(0xff39A2DB), number: phrases[index]);
        },
      ),
    );
  }
}
