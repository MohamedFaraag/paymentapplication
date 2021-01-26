import 'package:flutter/material.dart';
import 'package:payment/views/razorPage.dart';
import 'package:payment/views/HomePage.dart';
import 'package:payment/views/exitsting-cards.dart';
// tutroial for git hun
// https://instacodeblog.com/uploading-your-flutter-project-to-github/
//link for tutroial
// https://www.youtube.com/watch?v=7xcYSTH6Kx8&list=PLBxWkM8PLHcpl6px1aMbwSaaEucA8iWey&index=2
//dec for ved [Integrate Payments in Flutter with Razorpay Payment Gateway]
//description for functionality in Project
//1-razor payment

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Paymssent',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      initialRoute: '/home',
      routes: {
        '/home': (context) => HomePage(),
        '/existing-cards':(context) => ExitsingCards(),
        '/Razor-Page':(context)=>RazorPage(),
      },
    );
  }
}
