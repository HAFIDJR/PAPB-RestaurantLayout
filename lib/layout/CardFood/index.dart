import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';

class CardFood extends StatelessWidget {
  const CardFood({super.key});

  @override
  Widget build(BuildContext context) {
    final images = ["images/pict1.jpg", "images/pict2.jpg", "images/pict3.jpg"];
    return Container(
        width: double.infinity,
        height: 300,
        child: Swiper(
          itemBuilder: (BuildContext context, int index) {
            final image = images[index];
            return Image.asset(
              image,
              fit: BoxFit.fill,
            );
          },
          itemCount: images.length,
          autoplay: true,
          pagination: SwiperPagination(),
          control: SwiperControl(),
        ));
  }
}
