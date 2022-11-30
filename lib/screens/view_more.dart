import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class ViewMore extends StatelessWidget {
  const ViewMore({super.key});
  static const String routeName = '/view-more';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 44),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Know how data is \ncalculated',
            style: TextStyle(fontSize: 32, fontWeight: FontWeight.w600),
          ),
          SizedBox(
            height: 24,
          ),
          Text(
              'ESP32 is a series of low-cost, low-power system on a chip microcontrollers with integrated Wi-Fi and dual-mode Bluetooth. The ESP32 series employs either a Tensilica Xtensa LX6 microprocessor in both dual-core and single-core variations, Xtensa LX7 dual-core microprocessor or a single-core RISC-V. '),
          SizedBox(
            height: 12,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
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
                  Text('Good')
                ],
              ),
              Column(
                children: [
                   CircularPercentIndicator(
                    backgroundColor: const Color(0xFFB1D8BC),
                    circularStrokeCap: CircularStrokeCap.round,
                    radius: 44,
                    lineWidth: 12,
                    percent: .7,
                    center: Text("73%"),
                    progressColor: Color.fromARGB(255, 144, 106, 26),
                  ),
                  Text('Good')
                ],
              ),
              Column(
                children: [
                 CircularPercentIndicator(
                    backgroundColor: const Color(0xFFB1D8BC),
                    circularStrokeCap: CircularStrokeCap.round,
                    radius: 44,
                    lineWidth: 12,
                    percent: .7,
                    center: Text("73%"),
                    progressColor: Color.fromARGB(255, 57, 166, 203),
                  ),
                  Text('Good')
                ],
              ),
            ],
          ),
          SizedBox(
            height: 12,
          ),
          Container(
              height: 80,
              width: 600,
              child: Image.asset(
                'assets/plant.png',
                fit: BoxFit.fill,
              )),
          SizedBox(
            height: 12,
          ),
          Text(
              'Microprocessor and includes built-in antenna switches, RF balun, power amplifier, low-noise receive amplifier, filters, and power-management modules. ESP32 is created and developed by Espressif Systems, a Shanghai-based Chinese company, and is manufactured by TSMC using their 40 nm process. It is a successor to the ESP8266 microcontrolle'),
          SizedBox(
            height: 12,
          ),
          Container(
              height: 80,
              width: 600,
              child: Image.asset(
                'assets/plant.png',
                fit: BoxFit.fill,
              )),
        ],
      ),
    ));
  }
}
