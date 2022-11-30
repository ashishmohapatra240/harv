import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:harv/widgets/custom_button.dart';
import 'package:harv/widgets/sensor_datacard.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:firebase_database/firebase_database.dart';

class MyPlants extends StatefulWidget {
  MyPlants({super.key});

  @override
  State<MyPlants> createState() => _MyPlantsState();
}



class _MyPlantsState extends State<MyPlants> {
  Query dbRef = FirebaseDatabase.instance.ref().child('Students');
  DatabaseReference reference =
      FirebaseDatabase.instance.ref().child('Students');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20, 56, 20, 0),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const Padding(
                padding: EdgeInsets.only(bottom: 12),
                child: Text(
                  'Your Plant',
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(10),
                ),
                height: 120,
                width: 416,
                child: Image.asset(
                  'assets/images/Banner2.png',
                  fit: BoxFit.fill,
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                'Cedar',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 8,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Type: Wild Shrub",
                    style: TextStyle(
                      color: Color(0xff404040),
                      fontSize: 14,
                      fontFamily: "Roboto",
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  Text(
                    'Date:19.02.22',
                    style: TextStyle(
                      color: Color(0xff404040),
                      fontSize: 14,
                      fontFamily: "Roboto",
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Location: Infocity',
                    style: TextStyle(
                      color: Color(0xff404040),
                      fontSize: 14,
                      fontFamily: "Roboto",
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  Text(
                    'Quantity: 400 saplings',
                    style: TextStyle(
                      color: Color(0xff404040),
                      fontSize: 14,
                      fontFamily: "Roboto",
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ],
              ),
              Container(
                height: 268,
                child: GridView.count(
                  physics: NeverScrollableScrollPhysics(),
                  primary: false,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 8,
                  childAspectRatio: 1.6,
                  crossAxisCount: 2,
                  children: <Widget>[
                    // Container(
                    //   decoration: BoxDecoration(
                    //     color: Color.fromARGB(255, 255, 252, 206),
                    //     borderRadius: BorderRadius.circular(10),
                    //   ),
                    //   padding: const EdgeInsets.all(16),
                    //   child: Column(
                    //     mainAxisAlignment: MainAxisAlignment.center,
                    //     children: [
                    //       Row(
                    //         mainAxisAlignment: MainAxisAlignment.center,
                    //         children: [
                    //           Icon(
                    //             Icons.abc_sharp,
                    //             size: 44,
                    //           ),
                    //           Text(
                    //             '23%',
                    //             style: TextStyle(fontSize: 24),
                    //           )
                    //         ],
                    //       ),
                    //       Text("Temperature"),
                    //     ],
                    //   ),
                    // ),
                    SensorDataCard(
                      color: Color(0xFFFFFDE2),
                      imageUri: 'assets/images/Humidity.png',
                    ),
                    SensorDataCard(
                      color: Color(0xFFD4F3EA),
                      imageUri: 'assets/images/Humidity.png',
                    ),
                    SensorDataCard(
                      color: Color(0xFFFFF7EE),
                      imageUri: 'assets/images/Temperature.png',
                    ),
                    SensorDataCard(
                      color: Color(0xFFDFF4FD),
                      imageUri: 'assets/images/SoilMoisture.png',
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 24,
              ),
              Row(
                children: [
                  CircularPercentIndicator(
                    backgroundColor: const Color(0xFFB1D8BC),
                    circularStrokeCap: CircularStrokeCap.round,
                    radius: 44,
                    lineWidth: 12,
                    percent: .7,
                    center: Text("73%"),
                    progressColor: Color.fromRGBO(86, 203, 57, 1),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 4),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  "Score",
                                  style: TextStyle(
                                    color: Color(0xff404040),
                                    fontSize: 16,
                                    fontFamily: "Roboto",
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                SizedBox(width: 144),
                                Text(
                                  "Know more",
                                  style: TextStyle(
                                    color: Color(0xff213300),
                                    fontSize: 8,
                                    decoration: TextDecoration.underline,
                                    fontFamily: "Roboto",
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 240,
                        child: Text(
                          "Your plant is well watered and gets enough sunlight however temperature and humidity needs to be taken care of.",
                          style: TextStyle(
                            color: Color(0xff838383),
                            fontSize: 14,
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 12,
              ),
            ]),
          ),
        ),
        floatingActionButton: Padding(
          padding: const EdgeInsets.fromLTRB(32, 0, 0, 0),
          child: CustomButton(text: 'Assign Volunteer', onTap: () {}),
        ));
  }
}
