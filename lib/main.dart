import 'package:flutter/material.dart';
import 'package:propertymanagementapp/screens/detailScreen/detail_screen.dart';
import 'package:propertymanagementapp/screens/homeScreen/home_screen.dart';
import 'package:propertymanagementapp/screens/loginScreen/login.dart';
import 'package:propertymanagementapp/screens/whishlistScreen/whishlist_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const Login(),
        '/home': (context) => const HomeScreen(),
        '/detail': (context) => const DetailScreen(),
        '/wishlist': (context) => const WhishlistScreen(),
      },
    );
  }
}
