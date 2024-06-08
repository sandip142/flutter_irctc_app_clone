import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_irctc_clone_app/Presentation/Screens/Onboard/get_started_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Timer(
        Duration(milliseconds: 1600),
        () => setState(() {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => GetStartedScreen(),
                  ));
            }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body
      body: Container(
        color: Color(0xFF010101),
        child: Center(
          child: Image.asset("assets/image/irctc_logo.png"),
        ),
      ),
    );
  }
}
