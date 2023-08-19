// ignore_for_file: prefer_const_constructors, avoid_print

import 'package:flutter/material.dart';
import 'package:toku/screens/Numbers.dart';
import 'package:toku/screens/colors.dart';
import 'package:toku/screens/mempers_family.dart';
import 'package:toku/screens/phrases.dart';

import '../components/category_item.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFEF6DB),
      appBar: AppBar(
        title: Text("Toku"),
        backgroundColor: Color(0xFF46322B),
      ),
      body: Column(
        children: [
          Category(
            text: "Numbers",
            color: 0xFFEF9235,
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext context) {
                return Numbers();
              }));
            },
          ),
          Category(
            text: "Family Members",
            color: 0xFF5E8A3F,
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext context) {
                return FamilyMempers();
              }));
            },
          ),
          Category(
            text: "Colors",
            color: 0xFF864CAF,
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext context) {
                return LanColors();
              }));
            },
          ),
          Category(
            text: "Phrases",
            color: 0xFF52AFD6,
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext context) {
                return Phrases();
              }));
            },
          ),
        ],
      ),
    );
  }
}
