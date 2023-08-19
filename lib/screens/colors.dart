import 'package:flutter/material.dart';
import 'package:toku/components/item.dart';
import 'package:toku/models/number.dart';

class LanColors extends StatelessWidget {
  const LanColors({super.key});

  final List<Number> numbers = const [
    Number(
        image: 'assets/images/colors/color_black.png',
        jpName: 'Kuro',
        enName: 'Black',
        soundPath: 'sounds/colors/black.wav'),
    Number(
        image: 'assets/images/colors/color_brown.png',
        jpName: 'Chairo',
        enName: 'Brown',
        soundPath: 'sounds/colors/brown.wav'),
    Number(
        image: 'assets/images/colors/color_dusty_yellow.png',
        jpName: 'Dasutiierō',
        enName: 'Dusty Yallow',
        soundPath: 'sounds/colors/dustyyellow.wav'),
    Number(
        image: 'assets/images/colors/color_gray.png',
        jpName: 'Gurē',
        enName: 'Gray',
        soundPath: 'sounds/colors/gray.wav'),
    Number(
        image: 'assets/images/colors/color_green.png',
        jpName: 'Midori',
        enName: 'Green',
        soundPath: 'sounds/colors/green.wav'),
    Number(
        image: 'assets/images/colors/color_red.png',
        jpName: 'Aka',
        enName: 'Red',
        soundPath: 'sounds/colors/red.wav'),
    Number(
        image: 'assets/images/colors/color_white.png',
        jpName: 'Shiro',
        enName: 'White',
        soundPath: 'sounds/colors/white.wav'),
    Number(
        image: 'assets/images/colors/yellow.png',
        jpName: 'Kiiro',
        enName: 'Yellow',
        soundPath: 'sounds/colors/yellow.wav'),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Colors"),
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
              color: 0xFF864CAF,
            );
          },
        ),
      ),
    );
  }
}
