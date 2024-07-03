import 'package:audioplayers/audioplayers.dart';

// ignore: camel_case_types
class itemModel {
  final String sound;
  final String? image;
  final String jpName;
  final String enName;

  const itemModel(
      {required this.sound,
                this.image,
      required this.jpName,
      required this.enName,});
  playSound() 
      async {
        final player = AudioPlayer();
        await player.play(AssetSource(sound));
      }
}