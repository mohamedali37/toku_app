import 'package:flutter/material.dart';
import 'package:toku_app/components/sound_text.dart';
import 'package:toku_app/models/item_model.dart';


class Item extends StatelessWidget {
  const Item({super.key, required this.item,required this.color});
  final itemModel item;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: color,
      child: Row(children: [
        Container(
          color: const Color(0xffFFF6DC),
          child: Image.asset(item.image!),
        ),
        Expanded(
          child: SoundAndTextWidget(item: item),
          ),
      ]),
    );
  }
}

