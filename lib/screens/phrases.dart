// ignoreforfile: filenames

import 'package:flutter/material.dart';
import 'package:toku/components/item.dart';
import 'package:toku/models/phrases.dart';

class Phrases extends StatelessWidget {
  const Phrases({super.key});
  final List<Phrase> phrase = const [
    Phrase(
        jpName: 'Kimasu ka',
        enName: 'are you coming',
        soundPath: 'sounds/phrases/areyoucoming.wav'),
    Phrase(
        jpName: 'Kōdoku suru koto o wasurenaide kudasai',
        enName: 'dont forget to subscribe',
        soundPath: 'sounds/phrases/dontforgettosubscribe.wav'),
    Phrase(
        jpName: 'Go kibun wa ikagadesu ka',
        enName: 'how are you feeling',
        soundPath: 'sounds/phrases/howareyoufeeling.wav'),
    Phrase(
        jpName: 'Watashi wa anime ga daisukidesu',
        enName: 'i love anime',
        soundPath: 'sounds/phrases/iloveanime.wav'),
    Phrase(
        jpName: 'Watashi wa puroguramingu ga daisukidesu',
        enName: 'i love programming',
        soundPath: 'sounds/phrases/iloveprogramming.wav'),
    Phrase(
        jpName: 'Puroguramingu wa kantandesu',
        enName: 'programming is easy',
        soundPath: 'sounds/phrases/programmingiseasy.wav'),
    Phrase(
        jpName: 'Anata no namae wa nandesuka',
        enName: 'what is your name',
        soundPath: 'sounds/phrases/whatisyourname.wav'),
    Phrase(
        jpName: 'Doko ni iku no',
        enName: 'where are you going',
        soundPath: 'sounds/phrases/whereareyougoing.wav'),
    Phrase(
        jpName: 'Hai, kimasu',
        enName: 'yes im coming',
        soundPath: 'sounds/phrases/yesimcoming.wav'),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Text("Phrases"),
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
        itemCount: phrase.length,
        itemBuilder: (context, index) {
          return PhrasesItem(
            phrase: phrase[index],
            color: 0xFF52AFD6,
          );
        },
      ),
    ));
  }
}
