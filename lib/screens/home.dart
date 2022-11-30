import 'package:flutter/material.dart';
import 'package:harv/constants/global_variables.dart';
import 'package:harv/widgets/homecard.dart';
import 'package:harv/widgets/carousal.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
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
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    // padding: const EdgeInsets.all(8),
                    children: <Widget>[
                      HomeCard(),
                      SizedBox(
                        width: 24,
                      ),
                      HomeCard(),
                    ],
                  ),
                ),
                SizedBox(
                  height: 24,
                ),
                Container(
                  width: 346,
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
                      SizedBox(width: 252),
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
                        spreadRadius: 4,
                        color: Color.fromARGB(255, 228, 228, 228),
                        blurRadius: 4,
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
                              child: Image.asset('Banner.png'),
                              width: 92.51,
                              height: 90.42,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: Colors.white,
                              ),
                            ),
                          ),
                  
                          Text(
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
