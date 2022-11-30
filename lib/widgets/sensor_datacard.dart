// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class SensorDataCard extends StatelessWidget {
  String imageUri;
  Color color;
  SensorDataCard({
    Key? key,
    required this.imageUri,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 164,
      height: 100,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 164,
            height: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4.29),
              color: color,
            ),
            padding: const EdgeInsets.only(
              left: 37,
              right: 36,
              top: 25,
              bottom: 24,
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 14,
                          height: 20,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Image.asset(imageUri),
                        ),
                        SizedBox(width: 8),
                        Text(
                          "23%",
                          style: TextStyle(
                            color: Color(0xff404040),
                            fontSize: 23.15,
                            fontFamily: "Roboto",
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      "soil moisture\ngood for your plant",
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        color: Color(0xff404040),
                        fontSize: 10.29,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
