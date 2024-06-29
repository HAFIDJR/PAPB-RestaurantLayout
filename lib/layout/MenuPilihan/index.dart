// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:uas_semester_6/layout/MenuPilihan/ratingFood.dart';

class listFood extends StatelessWidget {
  const listFood(
      {super.key, required this.titleFood, required this.descriptionFood});
  final String titleFood;
  final String descriptionFood;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: Row(
        children: [
          Image.asset(
            'images/pecel2.jpg',
            width: 100,
            height: 100,
            fit: BoxFit.cover,
          ),
          Expanded(
            child: Container(
                margin: EdgeInsets.only(left: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    FavoriteWidget(),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 4),
                      child: Text(
                        titleFood,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Text(
                      descriptionFood,
                      style: TextStyle(color: Colors.grey[500]),
                    ),
                    Text(
                      descriptionFood,
                      style: TextStyle(color: Colors.grey[500]),
                    )
                  ],
                )),
          )
        ],
      ),
    );
  }
}
