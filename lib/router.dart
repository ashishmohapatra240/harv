import 'package:flutter/material.dart';
import 'package:harv/screens/choose_volunteer.dart';
import 'package:harv/screens/home_organization.dart';
import 'package:harv/screens/home_volunteer.dart';
import 'package:harv/screens/plants.dart';
import 'package:harv/screens/sign_in.dart';
import 'package:harv/screens/sign_up.dart';
import 'package:harv/screens/view_more.dart';
import 'package:harv/screens/volunteer_form.dart';

Route<dynamic> generateRoute(RouteSettings routeSettings) {
  switch (routeSettings.name) {
    case VolunteerForm.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const VolunteerForm(),    //1
  );
  case LoginForm.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const LoginForm(),      //2
      );
        case signUp.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const signUp(),      //3
      );
        case ViewMore.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const ViewMore(),      //4
      );
        case MyPlants.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const MyPlants(),      //5
      );
        case HomeVolunteer.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const HomeVolunteer(),      //6
      );
        case ChooseVolunteer.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const ChooseVolunteer(),      //7
      );
          case Home.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const Home(),      //8
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
