import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class signUp extends StatefulWidget {
  const signUp({super.key});

  @override
  State<signUp> createState() => _signUpState();
}

class _signUpState extends State<signUp> {
  late String dropdownvalue;

  final List<String> items = <String>[
    'Volunteer',
    'Organization',
  ];
  @override
  void initState() {
    super.initState();
    dropdownvalue = items[0];
  }

  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 180, 20, 128),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 24, 0, 24),
              child: Text(
                'Welcome!',
                style: TextStyle(fontSize: 36, fontWeight: FontWeight.w500),
              ),
            ),
            TextField(
              decoration: InputDecoration(
                labelText: 'Enter your name',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
            SizedBox(
              height: 12,
            ),
            TextField(
              decoration: InputDecoration(
                labelText: 'Enter your password',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
            SizedBox(
              height: 12,
            ),
            TextField(
              decoration: InputDecoration(
                labelText: 'Location',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
           
            SizedBox(
              height: 12,
            ),
            DropdownButtonFormField(
              borderRadius: BorderRadius.circular(8),

              // Initial Value
              value: dropdownvalue,

              // Down Arrow Icon
              icon: const Icon(Icons.keyboard_arrow_down),

              // Array list of items
              items: items.map((String items) {
                return DropdownMenuItem(
                  value: items,
                  child: Text(items),
                );
              }).toList(),
              // After selecting the desired option,it will
              // change button value to selected value
              onChanged: (String? newValue) {
                setState(() {
                  dropdownvalue = newValue!;
                });
              },
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.rectangle_outlined,
                        color: Color.fromARGB(255, 190, 190, 190),
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      Text(
                        'Remember Me?',
                        style: TextStyle(fontWeight: FontWeight.w300),
                      )
                    ],
                  ),
                  Text(
                    'Forgot Password?',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 32,
            ),
            Center(
              child: ElevatedButton(
                child: Text('Create account'),
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      //to set border radius to button
                      borderRadius: BorderRadius.circular(8)),
                  minimumSize: const Size(374 + 24, 50),
                  primary: Color.fromARGB(255, 1, 138, 6),
                ),
                onPressed: () {},
              ),
            ),
            SizedBox(
              height: 120 ,
            ),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Create an account?'),
                  Text(
                    'Signup',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
}
