// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ImageHeader extends StatelessWidget {
  const ImageHeader({super.key, required this.image});
  final String image;
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 5, left: 0),
        child: Stack(
          children: [
            Image.asset(
              image,
              width: 268,
              fit: BoxFit.cover,
            ),
            Container(
              width: 268,
              decoration: BoxDecoration(color: Colors.black.withOpacity(0.5)),
              child: Container(
                  padding: EdgeInsets.only(left: 10, bottom: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text('Promo 20 %',
                          style: TextStyle(
                              color: Colors.amber,
                              fontSize: 25.0,
                              fontWeight: FontWeight.bold)),
                      Text('Untuk 10 Pembeli Pertama',
                          style: TextStyle(
                              color: Colors.grey.shade200,
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold)),
                    ],
                  )),
            )
          ],
        ));
  }
}
