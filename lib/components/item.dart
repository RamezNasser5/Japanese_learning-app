import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:toku/models/number.dart';
import 'package:toku/models/phrases.dart';

class Item extends StatelessWidget {
  const Item({Key? key, required this.number, required this.color})
      : super(key: key);
  final Number number;
  final int color;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: Color(color),
      child: Row(
        children: [
          Container(
            color: const Color(0xffFFF6DC),
            child: Image.asset(number.image),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  number.jpName,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
                Text(
                  number.enName,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
          const Spacer(
            flex: 1,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: IconButton(
                onPressed: () async {
                  final player = AudioPlayer();
                  player.play(AssetSource(number.soundPath));
                },
                icon: const Icon(
                  Icons.play_arrow,
                  color: Colors.white,
                )),
          )
        ],
      ),
    );
  }
}

class PhrasesItem extends StatelessWidget {
  const PhrasesItem({super.key, required this.phrase, required this.color});
  final Phrase phrase;
  final int color;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: Color(color),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  phrase.jpName,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
                Text(
                  phrase.enName,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
          const Spacer(
            flex: 1,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: IconButton(
                onPressed: () async {
                  final player = AudioPlayer();
                  player.play(AssetSource(phrase.soundPath));
                },
                icon: const Icon(
                  Icons.play_arrow,
                  color: Colors.white,
                )),
          )
        ],
      ),
    );
  }
}
