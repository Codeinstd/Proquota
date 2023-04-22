import 'dart:async';
import 'package:flutter/material.dart';
import 'package:proquota/classes/mediaQuery.dart';
import 'package:proquota/classes/style.dart';
import 'package:proquota/screens/onboarding1.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    // TODO: implement initState//
    super.initState();
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: initScreen(context),
    );
  }

  startTime() async {
    var duration = const Duration(seconds: 3);
    return Timer(duration, route);
  }

  route() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => const Onboard1()),
    );
  }

  initScreen(BuildContext context) {
    return Scaffold(
      backgroundColor: style.primary,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              'assets/Logo.png',
              height: 100,
              width: 100,
            ),
            const Padding(padding: EdgeInsets.only(top: 20)),
            SizeConfig().h2txtW('PROQUOTA', 28),
            const SizedBox(
              height: 50,
            ),
            // const CircularProgressIndicator(
            //   backgroundColor: style.white,
            //   strokeWidth: 1,
            // ),
          ],
        ),
      ),
    );
  }
}
