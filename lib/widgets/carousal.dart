import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:harv/constants/global_variables.dart';

class CarouselImage extends StatelessWidget {
  const CarouselImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
      ),
      child: CarouselSlider(
        items: GlobalVariables.carouselImages.map((i) {
          return Builder(
            builder: (BuildContext context) => Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
              ),
              child: Image.asset(
                i,
                fit: BoxFit.cover,
                height: 200,
              ),
            ),
          );
        }).toList(),
        options: CarouselOptions(
          viewportFraction: 0.75,
          height: 144,
          autoPlay: true,
          enlargeCenterPage: true,
        ),
      ),
    );
  }
}
