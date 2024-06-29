// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:uas_semester_6/layout/MenuMakanan/categoryIcon.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CategoryFood extends StatelessWidget {
  const CategoryFood({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      margin: EdgeInsets.only(top: 10),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Expanded(
              child: IconCategory(
            colorBox: Colors.green,
            iconCategory: FontAwesomeIcons.bowlFood,
            textFood: "Menu Special",
          )),
          IconCategory(
            colorBox: Colors.red,
            iconCategory: FontAwesomeIcons.utensils,
            textFood: "Menu Terlaris",
          ),
          IconCategory(
            colorBox: Colors.blue,
            iconCategory: FontAwesomeIcons.mugHot,
            textFood: "Minuman",
          ),
          IconCategory(
            colorBox: Colors.deepOrangeAccent,
            iconCategory: FontAwesomeIcons.restroom,
            textFood: "Tempat Istirahat",
          ),
        ],
      ),
    );
  }
}
