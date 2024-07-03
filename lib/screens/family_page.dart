import 'package:flutter/material.dart';
import 'package:toku_app/components/item_pages.dart';
import 'package:toku_app/models/item_model.dart';

class FamilyPage extends StatelessWidget {
  const FamilyPage({super.key});
  final List<itemModel> family = const [
    itemModel(
        sound: 'sounds/family_members/father.wav',
        image: 'assets/images/family_members/family_father.png',
        jpName: 'Chichioya',
        enName: 'father'),
    itemModel(
        sound: 'sounds/family_members/mother.wav',
        image: 'assets/images/family_members/family_mother.png',
        jpName: 'Hahaoya',
        enName: 'mother'),
    itemModel(
        sound: 'sounds/family_members/grand father.wav',
        image: 'assets/images/family_members/family_grandfather.png',
        jpName: 'Oji-chan',
        enName: 'grand father'),
    itemModel(
        sound: 'sounds/family_members/grand mother.wav',
        image: 'assets/images/family_members/family_grandmother.png',
        jpName: 'Sobo',
        enName: 'grand mother'),
    itemModel(
        sound: 'sounds/family_members/son.wav',
        image: 'assets/images/family_members/family_son.png',
        jpName: 'Musuko',
        enName: 'son'),
    itemModel(
        sound: 'sounds/family_members/daughter.wav',
        image: 'assets/images/family_members/family_daughter.png',
        jpName: 'Musume',
        enName: 'daughter'),
    itemModel(
        sound: 'sounds/family_members/older bother.wav',
        image: 'assets/images/family_members/family_older_brother.png',
        jpName: 'Oni-chan',
        enName: 'older brother'),
    itemModel(
        sound: 'sounds/family_members/older sister.wav',
        image: 'assets/images/family_members/family_older_sister.png',
        jpName: 'Ane',
        enName: 'older sister'),
    itemModel(
        sound: 'sounds/family_members/younger brohter.wav',
        image: 'assets/images/family_members/family_younger_brother.png',
        jpName: 'Otōto',
        enName: 'younger brother'),
    itemModel(
        sound: 'sounds/family_members/younger sister.wav',
        image: 'assets/images/family_members/family_younger_sister.png',
        jpName: 'Imōto',
        enName: 'younger sister'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff49332a),
        leading: const BackButton(color: Colors.white),
        title: const Text(
          'Family Members',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: family.length,
        itemBuilder: (context, index) {
          return Item(
              item: family[index],
              color:  const Color(0xff528032),);
        },
      ),
    );
  }
}
