import 'package:flutter/material.dart';
import 'package:toku/components/item.dart';
import 'package:toku/models/number.dart';

class FamilyMempers extends StatelessWidget {
  const FamilyMempers({super.key});

  final List<Number> numbers = const [
    Number(
        image: 'assets/images/family_members/family_father.png',
        jpName: 'Chichioya',
        enName: 'Father',
        soundPath: 'sounds/family_members/father.wav'),
    Number(
        image: 'assets/images/family_members/family_daughter.png',
        jpName: 'Musume',
        enName: 'Daughter',
        soundPath: 'sounds/family_members/daughter.wav'),
    Number(
        image: 'assets/images/family_members/family_grandfather.png',
        jpName: 'Ojisan',
        enName: 'Grand Father',
        soundPath: 'sounds/family_members/grandfather.wav'),
    Number(
        image: 'assets/images/family_members/family_mother.png',
        jpName: 'Hahaoya',
        enName: 'Mother',
        soundPath: 'sounds/family_members/mother.wav'),
    Number(
        image: 'assets/images/family_members/family_grandmother.png',
        jpName: 'Sobo',
        enName: 'Grand Mother',
        soundPath: 'sounds/family_members/grandmother.wav'),
    Number(
        image: 'assets/images/family_members/family_older_brother.png',
        jpName: 'Nisan',
        enName: 'Older Brother',
        soundPath: 'sounds/family_members/olderbother.wav'),
    Number(
        image: 'assets/images/family_members/family_older_sister.png',
        jpName: 'Ane',
        enName: 'Older Sister',
        soundPath: 'sounds/family_members/oldersister.wav'),
    Number(
        image: 'assets/images/family_members/family_son.png',
        jpName: 'Musuko',
        enName: 'Son',
        soundPath: 'sounds/family_members/son.wav'),
    Number(
        image: 'assets/images/family_members/family_younger_sister.png',
        jpName: 'Imōto',
        enName: 'Younger Sister',
        soundPath: 'sounds/family_members/youngersister.wav'),
    Number(
        image: 'assets/images/family_members/family_younger_brother.png',
        jpName: 'Otōto',
        enName: 'Younger Brother',
        soundPath: 'sounds/family_members/youngerbrohter.wav'),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Family Mempers"),
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
              color: 0xFF5E8A3F,
            );
          },
        ),
      ),
    );
  }
}
