import 'package:flutter/material.dart';
import 'package:toku_app/models/item_model.dart';

class SoundAndTextWidget extends StatelessWidget {
  const SoundAndTextWidget({super.key, required this.item});
  final itemModel item;
  @override
  Widget build(BuildContext context) {
    return Row(children: [
      const SizedBox(
          width: 20,
        ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            item.jpName,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 18,
            ),
          ),
          Text(
            item.enName,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 18,
            ),
          ),
        ],
      ),
      const Spacer(
        flex: 1,
      ),
      Padding(
        padding: const EdgeInsets.only(right: 10),
        child: IconButton(
          onPressed: () {
            item.playSound();
          },
          icon: const Icon(
            Icons.play_arrow,
            size: 30,
            color: Colors.white,
          ),
        ),
      ),
      
    ]);
  }
}
