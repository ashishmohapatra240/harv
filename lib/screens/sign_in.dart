import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class signIn extends StatelessWidget {
  const signIn({super.key});
  static const String routeName = '/sign-in';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 224, 20, 128),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 24, 0, 24),
              child: Text(
                'Welcome Back!',
                style: TextStyle(fontSize: 36, fontWeight: FontWeight.w500),
              ),
            ),
            TextField(
              decoration: InputDecoration(
                labelText: 'Enter your Email',
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
                labelText: 'Password',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Row(
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
            SizedBox(
              height: 64,
            ),
            Center(
              child: ElevatedButton(
                child: Text('Sign In'),
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
              height: 224,
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
