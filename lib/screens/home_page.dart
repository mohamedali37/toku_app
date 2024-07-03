// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:toku_app/screens/color_page.dart';
import 'package:toku_app/screens/family_page.dart';
import 'package:toku_app/screens/numbrs_page.dart';
import 'package:toku_app/screens/phrases_page.dart';


import '../components/category_item.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfffff4d9),
      appBar: AppBar(
        backgroundColor: const Color(0xff49332a),
        title: const Text(
          'Toku',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Column (
        children: [
          Category(
            tap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const NumbersPage();
            }));
            },
            text: 'Numbers',
            color: const Color(0xfff99531),
          ),
          Category(
            tap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const FamilyPage();
            }));
            },
            text: 'Family Members',
            color:  const Color(0xff528032),
          ),
          Category(
            tap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return const ColorPage();
              }));  
            },
            text: 'Colors',
            color:  const Color(0xff7d40a2),
          ),
          Category(
            tap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return const PhrasesPage();
              }));  
            },
            text: 'Phrases',
            color:  const Color(0xff47a5cb),
          ),
        ],
      ),
    );
  }
}

