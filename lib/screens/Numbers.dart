// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:toku/components/item.dart';

import '../models/number.dart';

class Numbers extends StatelessWidget {
  const Numbers({super.key});
  final List<Number> numbers = const [
    Number(
        image: 'assets/images/numbers/number_one.png',
        jpName: 'ichi',
        enName: 'one',
        soundPath: 'sounds/numbers/number_one_sound.mp3'),
    Number(
        image: 'assets/images/numbers/number_two.png',
        jpName: 'ni',
        enName: 'two',
        soundPath: 'sounds/numbers/number_two_sound.mp3'),
    Number(
        image: 'assets/images/numbers/number_three.png',
        jpName: 'san',
        enName: 'three',
        soundPath: 'sounds/numbers/number_three_sound.mp3'),
    Number(
        image: 'assets/images/numbers/number_four.png',
        jpName: 'shi',
        enName: 'four',
        soundPath: 'sounds/numbers/number_four_sound.mp3'),
    Number(
        image: 'assets/images/numbers/number_five.png',
        jpName: 'go',
        enName: 'five',
        soundPath: 'sounds/numbers/number_five_sound.mp3'),
    Number(
        image: 'assets/images/numbers/number_six.png',
        jpName: 'roku',
        enName: 'six',
        soundPath: 'sounds/numbers/number_six_sound.mp3'),
    Number(
        image: 'assets/images/numbers/number_seven.png',
        jpName: 'shichi',
        enName: 'seven',
        soundPath: 'sounds/numbers/number_seven_sound.mp3'),
    Number(
        image: 'assets/images/numbers/number_eight.png',
        jpName: 'hachi',
        enName: 'eight',
        soundPath: 'sounds/numbers/number_eight_sound.mp3'),
    Number(
        image: 'assets/images/numbers/number_nine.png',
        jpName: 'ku',
        enName: 'nine',
        soundPath: 'sounds/numbers/number_nine_sound.mp3'),
    Number(
        image: 'assets/images/numbers/number_ten.png',
        jpName: 'juu',
        enName: 'ten',
        soundPath: 'sounds/numbers/number_ten_sound.mp3'),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Text("Numbers"),
        backgroundColor: const Color(0xFF46322B),
        leading: GestureDetector(
          child: const Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
          onTap: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: ListView.builder(
        itemCount: numbers.length,
        itemBuilder: (context, index) {
          return Item(
            number: numbers[index],
            color: 0xFFEF9235,
          );
        },
      ),
    ));
  }
}
