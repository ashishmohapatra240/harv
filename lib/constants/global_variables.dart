import 'package:flutter/material.dart';

class Keys {
  static final messangerKey = GlobalKey<ScaffoldMessengerState>();
}

class GlobalVariables {
  static final messangerKey = GlobalKey<ScaffoldMessengerState>();

  // COLORS

  static const primaryColor = Color.fromRGBO(34, 51, 0, 1);
  static const backgroundColor = Color(0xff090909);
  static const Color cardBackgroundColor = Color(0xffE5F1E1);

  static var selectedNavBarColor = primaryColor;
  static const unselectedNavBarColor = Colors.black87;

//Images
  static const List<String> carouselImages = [
    'assets/images/Banner.png',
    'assets/images/Banner2.png',
  ];
}
