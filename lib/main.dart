import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:harv/screens/choose_volunteer.dart';
import 'package:harv/screens/dashboard.dart';
import 'package:harv/screens/home.dart';
import 'package:harv/screens/plants.dart';
import 'package:harv/screens/sign_in.dart';
import 'package:harv/screens/volunteer_form.dart';

import 'firebase_options.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: StreamBuilder(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return Dashboard();
        } else {
          return signIn();
        }
      },
    ));
  }
}
