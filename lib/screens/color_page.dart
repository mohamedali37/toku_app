import 'package:flutter/material.dart';
import 'package:toku_app/components/item_pages.dart';
import 'package:toku_app/models/item_model.dart';

class ColorPage extends StatelessWidget {
  const ColorPage({super.key});
  final List<itemModel> color = const [
    itemModel(
        sound: 'sounds/colors/black.wav',
        image: 'assets/images/colors/color_black.png',
        jpName: 'Kuro',
        enName: 'black'),
    itemModel(
        sound: 'sounds/colors/brown.wav',
        image: 'assets/images/colors/color_brown.png',
        jpName: 'Chairo',
        enName: 'brown'),
    itemModel(
        sound: 'sounds/colors/dusty yellow.wav',
        image: 'assets/images/colors/color_dusty_yellow.png',
        jpName: 'Hokori ppoi kiiro',
        enName: 'dusty yellow'),
    itemModel(
        sound: 'sounds/colors/gray.wav',
        image: 'assets/images/colors/color_gray.png',
        jpName: 'Gurē',
        enName: 'gray'),
    itemModel(
        sound: 'sounds/colors/green.wav',
        image: 'assets/images/colors/color_green.png',
        jpName: 'Midori',
        enName: 'green'),
    itemModel(
        sound: 'sounds/colors/red.wav',
        image: 'assets/images/colors/color_red.png',
        jpName: 'Aka',
        enName: 'red'),
    itemModel(
        sound: 'sounds/colors/white.wav',
        image: 'assets/images/colors/color_white.png',
        jpName: 'Shiroi',
        enName: 'white'),
    itemModel(
        sound: 'sounds/colors/yellow.wav',
        image: 'assets/images/colors/yellow.png',
        jpName: 'Kiiro',
        enName: 'yellow'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff49332a),
        leading: const BackButton(color: Colors.white),
        title: const Text(
          'Colors',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: color.length,
        itemBuilder: (context, index) {
          return Item(item: color[index],color: const Color(0xff7d40a2),);
        },
      ),
    );
  }
}
