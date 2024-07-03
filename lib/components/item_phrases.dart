import 'package:flutter/material.dart';
import 'package:toku_app/components/sound_text.dart';
import 'package:toku_app/models/item_model.dart';


class Phrases extends StatelessWidget {
  const Phrases({super.key,required this.item});
  final itemModel item;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: const Color(0xff47a5cb),
      child: SoundAndTextWidget(item: item),
    );
  }
}