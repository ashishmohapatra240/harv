import 'package:flutter/material.dart';

class HomeCard extends StatelessWidget {
  const HomeCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 196,
      height: 200,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(blurRadius: 8,
           color: Color.fromARGB(255, 229, 229, 229),
             spreadRadius: 0
           ),
           
        ],
        borderRadius: BorderRadius.circular(8),
        color: Color.fromARGB(255, 255, 255, 255),
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 12,
      ),
      child: Column(
        children: [
          Stack(
            children: <Widget>[
              ClipRRect(
                 borderRadius: BorderRadius.circular(8.0),
                child: Image.asset(
                  'assets/images/Bamboo1.png',
                  height: 108,
                  width: 172,
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(112,72,2,2),
                child: Container(
                  
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
              SizedBox(height: 8),
              Row(
                children: [
                  Row(
                    children: const [
                      Icon(Icons.location_pin,size:18,color:Color.fromARGB(255, 115, 115, 115),),
                      Text(
                        "Jaydev Vihar",
                        style: TextStyle(
                          color: Color.fromARGB(255, 115, 115, 115),
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 8),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    // mainAxisAlignment: MainAxisAlignment.center,
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 10,
                        height: 10,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Icon(
                          Icons.calendar_month_rounded,
                          color:Color.fromARGB(255, 115, 115, 115),

                          size: 12,
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
