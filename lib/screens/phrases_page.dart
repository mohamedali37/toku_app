import 'package:flutter/material.dart';
import 'package:toku_app/components/item_phrases.dart';

import '../models/item_model.dart';

class PhrasesPage extends StatelessWidget {
  const PhrasesPage({super.key});
  final List<itemModel> phrase = const [
    itemModel(
        sound: 'sounds/phrases/dont_forget_to_subscribe.wav',
        jpName: 'Kōdoku suru koto o wasurenaide kudasai',
        enName: 'don\'t forget to subscribe'),
    itemModel(
        sound: 'sounds/phrases/i_love_programming.wav',
        jpName: 'Watashi wa puroguramingu ga daisukidesu',
        enName: 'i love programming'),
    itemModel(
        sound: 'sounds/phrases/programming_is_easy.wav',
        jpName: 'Puroguramingu wa kantandesu',
        enName: 'programming is easy'),
    itemModel(
        sound: 'sounds/phrases/where_are_you_going.wav',
        jpName: 'Doko ni iku no?',
        enName: 'where are you going?'),
    itemModel(
        sound: 'sounds/phrases/what_is_your_name.wav',
        jpName: 'Anata no namae wa nanidesu ka?',
        enName: 'what is your name?'),
    itemModel(
        sound: 'sounds/phrases/i_love_anime.wav',
        jpName: 'Watashi wa anime ga daisukidesu',
        enName: 'i love anime'),
    itemModel(
        sound: 'sounds/phrases/how_are_you_feeling.wav',
        jpName: 'Go kibun wa ikagadesu ka?',
        enName: 'how are you feeling?'),
    itemModel(
        sound: 'sounds/phrases/are_you_coming.wav',
        jpName: 'Kimasu ka?',
        enName: 'are you coming?'),
    itemModel(
        sound: 'sounds/phrases/yes_im_coming.wav',
        jpName: 'Hai, kimasu',
        enName: 'yes i am coming'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff49332a),
        leading: const BackButton(color: Colors.white),
        title: const Text(
          'Phrases',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: phrase.length,
        itemBuilder: (context, index) {
          return Phrases(item: phrase[index]);
        },
      ),
    );
  }
}