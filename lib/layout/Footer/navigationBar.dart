// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_polygon_clipper/flutter_polygon_clipper.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NavigationFooter extends StatelessWidget {
  const NavigationFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        Container(
          height: 60,
          padding: EdgeInsets.only(top: 10),
          decoration: BoxDecoration(color: Colors.blueGrey),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [Icon(Icons.home), Text("Home")],
              ),
              Column(
                children: [
                  Icon(Icons.shopping_cart_rounded),
                  Text("Keranjang")
                ],
              ),
            ],
          ),
        ),
        Container(
            height: 10,
            width: 70,
            child: OverflowBox(
              maxHeight: 70,
              child: FlutterClipPolygon(
                sides: 6,
                borderRadius: 5.0,
                boxShadows: [
                  PolygonBoxShadow(color: Colors.red, elevation: 1.0),
                  PolygonBoxShadow(color: Colors.grey, elevation: 5.0)
                ],
                child: Container(
                  color: Colors.yellow,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(FontAwesomeIcons.book),
                      Padding(
                        padding: EdgeInsets.only(top: 2),
                        child: Text(
                          "Menu",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )),
      ],
    );
  }
}
