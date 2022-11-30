import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class VCard extends StatelessWidget {
  const VCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 80),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
         
          Row(
            children: [

              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(32),
                  color: Colors.red,
                ),
                height: 64,
                width: 32,
              ),
              SizedBox(width: 8,),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                Text('Subhamsita',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                 Text('Subhamsita',style: TextStyle(fontWeight: FontWeight.w300),),
                  Text('Subhamsita',style: TextStyle(fontWeight: FontWeight.w300),),
              ],
              
              
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(40,0,10,0),
                child: OutlinedButton(
                    onPressed: () {
                      debugPrint('Received click');
                    },
                    child: const Text('Click Me'),
                  ),
              )
            ],
          )
        ]),
      ),
    );
  }
}