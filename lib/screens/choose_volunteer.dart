import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:harv/widgets/volunteer_card.dart';


class ChooseVolunteer extends StatelessWidget {
  const ChooseVolunteer({super.key});
  static const String routeName = '/choose-volunteer';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Text('Choose Volunteer',style: TextStyle(fontSize: 32,fontWeight: FontWeight.w500),),
          SizedBox(height: 24,),
          VCard(),
          SizedBox(height: 12,),
          VCard(),
          SizedBox(height: 12,),
          VCard(),
          SizedBox(height: 12,),
          VCard(),
          SizedBox(height: 12,),
       
        ],),
      )
    );
  }
}
