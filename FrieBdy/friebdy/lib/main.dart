import 'package:flutter/material.dart';
import 'package:socialbuddy/login_details.dart';

void main() {
  runApp(FrieBdyApp());
}

// Credits who are contributions for this mobile app project:
// James Matthew N. Avancena
// Cariella Jula E. Hilario
// Ria F. Gutierrez

// FrieBdy - A social app that let's you post own experiences on other friends.
// anytime, anywhere.

class FrieBdyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'FrieBdy',
        debugShowCheckedModeBanner: false,
        home: SplashScreen());
  }
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      const Duration(seconds: 2),
      () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => LoginDetails(),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFDD45D4),
        body: Center(child: Image.asset('assets/images/friebdy_logo.png')));
  }
}
