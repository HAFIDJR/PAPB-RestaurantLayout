import 'package:flutter/material.dart';

class FavoriteWidget extends StatefulWidget {
  const FavoriteWidget({super.key});

  @override
  State<FavoriteWidget> createState() => _FavoriteWidgetState();
}

class _FavoriteWidgetState extends State<FavoriteWidget> {
  bool _isFavorited = false;
  double _favoriteCount = 4.2;
  @override
  Widget build(BuildContext context) {
    return Container(
        clipBehavior: Clip.hardEdge,
        alignment: Alignment.topLeft,
        decoration: BoxDecoration(
            color: Colors.orangeAccent[400],
            borderRadius: BorderRadius.all(Radius.circular(10))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              child: IconButton(
                icon: (_isFavorited
                    ? const Icon(Icons.star)
                    : const Icon(Icons.star_border)),
                color: Colors.black,
                onPressed: _toggleFavorite,
              ),
            ),
            SizedBox(
              child: SizedBox(
                child: Text('$_favoriteCount'),
              ),
            )
          ],
        ));
  }

  void _toggleFavorite() {
    setState(() {
      if (_isFavorited) {
        _favoriteCount -= 1;
        _isFavorited = false;
      } else {
        _favoriteCount += 1;
        _isFavorited = true;
      }
    });
  }
}
