import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class MyPlants extends StatelessWidget {
  const MyPlants({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 56, 20, 0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 12),
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
              height: 164,
              width: 416,
              child: Image.asset(
                'assets/plant.png',
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
                  'Type:Scrubs',
                  style: TextStyle(fontSize: 18),
                ),
                Text('Date:19.02.22', style: TextStyle(fontSize: 18)),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Type:Scrubs', style: TextStyle(fontSize: 18)),
                Text('Date:19.02.22', style: TextStyle(fontSize: 18)),
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
                  Container(
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 255, 252, 206),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [Icon(Icons.abc_sharp,size: 44,), Text('23%',style: TextStyle(fontSize: 24),)],
                        ),
                        Text("Temperature"),
                      ],
                    ),
                  ),
                  Container(                 
                    decoration: BoxDecoration(
                      color: Color(0xFFD4F3EA),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [Icon(Icons.abc_sharp,size: 44,), Text('23%',style: TextStyle(fontSize: 24),)],
                        ),
                        Text("Humidity"),
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 255, 233, 208),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [Icon(Icons.abc_sharp,size: 44,), Text('23%',style: TextStyle(fontSize: 24),)],
                        ),
                        Text("Sunlight"),
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0xFFDFF4FD),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [Icon(Icons.abc_sharp,size: 44,), Text('23%',style: TextStyle(fontSize: 24),)],
                        ),
                        Text("Soil Moisture"),
                      ],
                    ),
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
                  radius: 50.0,
                  lineWidth: 5.0,
                  percent: 1.0,
                  center: new Text("100%"),
                  progressColor: Colors.green,
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
                          Text(
                            'Score',
                            style: TextStyle(fontSize: 22),
                          ),
                          SizedBox(
                            width: 140,
                          ),
                          Text('View More'),
                        ],
                      ),
                    ),
                    Text(
                        'Your plant is well watered and gets enough\nsunlight however temperature and humidity\n needs to be taken care of.'),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 12,
            ),
            ElevatedButton(
              child: Text(
                'Assign Me',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    //to set border radius to button
                    borderRadius: BorderRadius.circular(8)),
                minimumSize: const Size(374 + 24, 50),
                primary: Color.fromARGB(255, 1, 138, 6),
              ),
              onPressed: () {},
            ),
          ]),
        ),
      ),
    );
  }
}
