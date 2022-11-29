import 'package:flutter/material.dart';
import 'package:harv/widgets/carousal.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 48),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                CarouselImage(),
                SizedBox(
                  height: 36,
                ),
                Text(
                  "Track your Plants",
                  style: TextStyle(
                    color: Color(0xff404040),
                    fontSize: 24,
                    fontFamily: "Roboto",
                    fontWeight: FontWeight.w600,
                  ),
                )
              ]),
        ),
      ),
    );
  }
}
