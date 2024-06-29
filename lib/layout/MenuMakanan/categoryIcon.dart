import 'package:flutter/material.dart';

class IconCategory extends StatelessWidget {
  const IconCategory(
      {super.key,
      required this.colorBox,
      required this.iconCategory,
      required this.textFood});
  final Color colorBox;
  final IconData iconCategory;
  final String textFood;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      decoration: BoxDecoration(color: colorBox),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(iconCategory),
          SizedBox(height: 10),
          Text(
            textFood,
            style: TextStyle(
                color: Colors.grey[50],
                fontFamily: AutofillHints.middleName,
                fontWeight: FontWeight.w100),
          )
        ],
      ),
    );
  }
}
