// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:uas_semester_6/layout/Header/image.dart';

class HeaderApp extends StatelessWidget {
  const HeaderApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          ImageHeader(image: 'images/pecel.jpg'),
          ImageHeader(image: 'images/pecel.jpg'),
          ImageHeader(image: 'images/pecel.jpg'),
          ImageHeader(image: 'images/pecel.jpg'),
          ImageHeader(image: 'images/pecel.jpg'),
        ],
      ),
    );
  }
}
