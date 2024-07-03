import 'package:flutter/material.dart';
import 'package:toku_app/components/item_pages.dart';

import '../models/item_model.dart';

class NumbersPage extends StatelessWidget {
  const NumbersPage({super.key});
  final List<itemModel> numbers = const [
    itemModel(
        sound: 'sounds/numbers/number_one_sound.mp3',
        image: 'assets/images/numbers/number_one.png',
        jpName: 'Ichi',
        enName: 'one'),
    itemModel(
        sound: 'sounds/numbers/number_two_sound.mp3',
        image: 'assets/images/numbers/number_two.png',
        jpName: 'Ni',
        enName: 'two'),
    itemModel(
        sound: 'sounds/numbers/number_three_sound.mp3',
        image: 'assets/images/numbers/number_three.png',
        jpName: 'San',
        enName: 'three'),
    itemModel(
        sound: 'sounds/numbers/number_four_sound.mp3',
        image: 'assets/images/numbers/number_four.png',
        jpName: 'Shi',
        enName: 'four'),
    itemModel(
        sound: 'sounds/numbers/number_five_sound.mp3',
        image: 'assets/images/numbers/number_five.png',
        jpName: 'Go',
        enName: 'five'),
    itemModel(
        sound: 'sounds/numbers/number_six_sound.mp3',
        image: 'assets/images/numbers/number_six.png',
        jpName: 'Roku',
        enName: 'six'),
    itemModel(
        sound: 'sounds/numbers/number_seven_sound.mp3',
        image: 'assets/images/numbers/number_seven.png',
        jpName: 'Sebun',
        enName: 'seven'),
    itemModel(
        sound: 'sounds/numbers/number_eight_sound.mp3',
        image: 'assets/images/numbers/number_eight.png',
        jpName: 'Hachi',
        enName: 'eight'),
    itemModel(
        sound: 'sounds/numbers/number_nine_sound.mp3',
        image: 'assets/images/numbers/number_nine.png',
        jpName: 'Kyū',
        enName: 'nine'),
    itemModel(
        sound: 'sounds/numbers/number_ten_sound.mp3',
        image: 'assets/images/numbers/number_ten.png',
        jpName: 'Jū',
        enName: 'ten'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff49332a),
        leading: const BackButton(color: Colors.white),
        title: const Text(
          'Numbers',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: numbers.length,
        itemBuilder: (context, index) {
          return Item(item: numbers[index],
          color: const Color(0xfff99531),);
        },
      ),
    );
  }
}