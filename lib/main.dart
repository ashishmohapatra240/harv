import 'package:flutter/material.dart';
import 'package:harv/screens/dashboard.dart';
import 'package:harv/screens/home.dart';
import 'package:harv/screens/plants.dart';
import 'package:harv/screens/volunteer_form.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Harv',
      home: MyPlants(),
    );
  }
}
