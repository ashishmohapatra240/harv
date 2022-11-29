import 'package:flutter/material.dart';
import 'package:harv/screens/choose_volunteer.dart';

Route<dynamic> generateRoute(RouteSettings routeSettings) {
  switch (routeSettings.name) {
    case ChooseVolunteer.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const ChooseVolunteer(),
      );

    default:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const Scaffold(
          body: Center(
            child: Text('Screen not found'),
          ),
        ),
      );
  }
}
