import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/material.dart';

class RealtimeData extends StatelessWidget {
  RealtimeData({super.key});
  final auth = FirebaseAuth.instance;
  final ref = FirebaseDatabase.instance.ref('ESP32_APP');

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            children: [
              Expanded(
                child: FirebaseAnimatedList(
                    query: ref,
                    itemBuilder: (context, snapshot, animation, index) {
                      print(index);
                      return ListTile(
                        title:
                            Text(snapshot.child('HUMIDITY').value.toString()),
                      );
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
