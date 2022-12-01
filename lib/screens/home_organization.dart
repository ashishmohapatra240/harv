import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:harv/constants/global_variables.dart';
import 'package:harv/models/model.dart';
import 'package:harv/screens/plants.dart';
import 'package:harv/widgets/homecard.dart';
import 'package:harv/widgets/carousal.dart';

class Home extends StatelessWidget {
  const Home({super.key});
  static const String routeName = '/home-organization';
  @override
  Widget build(BuildContext context) {
    void navigateToMyPlants() {
      Navigator.pushNamed(context, MyPlants.routeName,arguments: ScreenArguments(
        'Extract Arguments Screen',
        'This message is extracted in the build method.',
        'hello',
        'hello',
        'af'
      ),);
    }

    final db = FirebaseFirestore.instance;
    final args = ModalRoute.of(context)?.settings.arguments as ScreenArguments?;

    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          "Harv",
          style: TextStyle(
            color: Color(0xff404040),
            fontSize: 30,
            fontFamily: "Roboto",
            fontWeight: FontWeight.w600,
          ),
        ),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.circle,
            color: GlobalVariables.primaryColor,
          ),
        ),
        actions: [
          IconButton(
              onPressed: () async {
                await FirebaseAuth.instance.signOut();
              },
              icon: Icon(
                Icons.leave_bags_at_home,
                color: GlobalVariables.primaryColor,
              ))
        ],
      ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 48),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CarouselImage(),
                SizedBox(
                  height: 32,
                ),
                Text(
                  "Track your plants",
                  style: TextStyle(
                    color: Color(0xff404040),
                    fontSize: 24,
                    fontFamily: "Roboto",
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                Container(
                  height: 210,
                  child: StreamBuilder<QuerySnapshot>(
        stream: db.collection('Saplings').snapshots(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else
            return ListView(
              scrollDirection: Axis.horizontal,
              children: snapshot.data!.docs.map((doc) {
                final dynamic data = doc.data();
                {
                  return InkWell(
                    onTap: navigateToMyPlants,
                    child: HomeCard(
                      name: data?['name'],
                      location: data?['location'],
                      date: data?['date'],
                    ),
                  );
                }
              }).toList(),
            );
        },
      ),
                ),
                SizedBox(
                  height: 24,
                ),
                Container(
                  width: 400,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: const [
                      Text(
                        "Task",
                        style: TextStyle(
                          color: Color(0xff404040),
                          fontSize: 24,
                          fontFamily: "Roboto",
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(width: 300),
                      Text(
                        "see all",
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          color: Color(0xff404040),
                          fontSize: 14,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                Container(
                  width: 390,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        spreadRadius: 0,
                        color: Color.fromARGB(255, 228, 228, 228),
                        blurRadius: 01,
                      )
                    ],
                    borderRadius: BorderRadius.circular(8),
                    color: Color.fromARGB(255, 255, 255, 255),
                  ),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8,
                    vertical: 9,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 44),
                            child: Container(
                              child: Image.asset('assets/images/Banner.png'),
                              width: 92.51,
                              height: 90.42,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: Colors.white,
                              ),
                            ),
                          ),

                          const Text(
                            "Humidity is below 48%\nBamboo Plantation at\nPatia needs your Attention!",
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
//       body: StreamBuilder<QuerySnapshot>(
//         stream: db.collection('Saplings').snapshots(),
//         builder: (context, snapshot) {
//           if (!snapshot.hasData) {
//             return Center(
//               child: CircularProgressIndicator(),
//             );
//           } else
//             return ListView(
//               scrollDirection: Axis.horizontal,
//               children: snapshot.data!.docs.map((doc) {
//                 final dynamic data = doc.data();
//                 {
//                   return InkWell(
//                     onTap: navigateToMyPlants,
//                     child: HomeCard(
//                       name: data?['name'],
//                       location: data?['location'],
//                       date: data?['date'],
//                     ),
//                   );
//                 }
//               }).toList(),
//             );
//         },
//       ),
//     ));
//   }
// }
