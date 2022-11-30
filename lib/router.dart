import 'package:flutter/material.dart';
import 'package:harv/screens/volunteer_form.dart';

Route<dynamic> generateRoute(RouteSettings routeSettings) {
  switch (routeSettings.name) {
    case VolunteerForm.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const VolunteerForm(),
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
