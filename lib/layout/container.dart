// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:uas_semester_6/layout/CardFood/index.dart';
import 'package:uas_semester_6/layout/MenuPilihan/index.dart';
import 'package:uas_semester_6/layout/Footer/navigationBar.dart';
import 'package:uas_semester_6/layout/Header/index.dart';
import 'package:uas_semester_6/layout/MenuMakanan/index.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const String appTitle = 'UAS SEMESTER 6-Hafid-';
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            appTitle,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.blueGrey,
          centerTitle: true,
        ),
        body: SingleChildScrollView(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HeaderApp(),
            CategoryFood(),
            Container(
              padding: EdgeInsets.all(10),
              transformAlignment: Alignment.topLeft,
              margin: EdgeInsets.only(top: 10),
              child: Text(
                "Menu Pilihan",
                style: TextStyle(
                    fontSize: 30, fontFamily: AutofillHints.addressCity),
              ),
            ),
            listFood(
                titleFood: "Pecel Sambel Tumpang",
                descriptionFood: "Pecel ,Sambel Tumpang ,Telur"),
            listFood(
                titleFood: "Pecel Sambel Tumpang",
                descriptionFood: "Pecel ,Sambel Tumpang ,Telur"),
            listFood(
                titleFood: "Pecel Sambel Tumpang",
                descriptionFood: "Pecel ,Sambel Tumpang ,Telur"),
            listFood(
                titleFood: "Pecel Sambel Tumpang",
                descriptionFood: "Pecel ,Sambel Tumpang ,Telur"),
            Container(
              padding: EdgeInsets.all(10),
              transformAlignment: Alignment.topLeft,
              margin: EdgeInsets.only(top: 10),
              child: Text(
                "Koleksi Makanan",
                style: TextStyle(
                    fontSize: 30, fontFamily: AutofillHints.addressCity),
              ),
            ),
            CardFood(),
            SizedBox(
              height: 50,
            )
          ],
        )),
        bottomNavigationBar: const NavigationFooter(),
      ),
    );
  }
}
