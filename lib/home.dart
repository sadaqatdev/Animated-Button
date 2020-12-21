import 'package:animated_contaner/widget/animated_button.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool isPressed = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            SizedBox(
              height: 100,
            ),
            TextField(
              decoration: InputDecoration(hintText: 'user name'),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              decoration: InputDecoration(hintText: 'password'),
            ),
            SizedBox(
              height: 20,
            ),
            AnimatedButton(
              titlel: 'Login',
              isPressed: isPressed,
              onPressed: () {
                print('------------');
                setState(() {
                  isPressed = !isPressed;
                });
              },
            )
          ],
        ),
      ),
    );
  }
}
