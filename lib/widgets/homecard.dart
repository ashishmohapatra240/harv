import 'package:flutter/material.dart';

class HomeCard extends StatelessWidget {
  const HomeCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 196,
      height: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Color(0xffe5f1e0),
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 12,
      ),
      child: Column(
        children: [
          Stack(
            children: <Widget>[
              Image.asset(
                'assets/images/Bamboo1.png',
                height: 108,
                width: 172,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  color: Color(0xff72941c),
                ),
                padding: const EdgeInsets.symmetric(
                  horizontal: 14,
                  vertical: 7,
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "230",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontFamily: "Roboto",
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Text(
                  "Cedar",
                  style: TextStyle(
                    color: Color(0xff404040),
                    fontSize: 22,
                    fontFamily: "Roboto",
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              SizedBox(height: 4),
              Row(
                children: [
                  Row(
                    children: const [
                      Icon(Icons.location_pin),
                      Text(
                        "Jaydev Vihar",
                        style: TextStyle(
                          color: Color(0xff565b59),
                          fontSize: 10,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 8),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 10,
                        height: 10,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Icon(
                          Icons.calendar_month_rounded,
                          size: 16,
                        ),
                      ),
                      SizedBox(width: 2),
                      Text(
                        "02.11.2022",
                        style: TextStyle(
                          color: Color(0xff565b59),
                          fontSize: 10,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
