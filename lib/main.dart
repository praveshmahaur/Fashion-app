import 'package:fashionapp/pages/cart.dart';
import 'package:fashionapp/pages/login_page.dart';
import 'package:fashionapp/pages/main_home_page.dart';
import 'package:fashionapp/pages/profile_page.dart';
import 'package:fashionapp/screens/shirts_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  // SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
  //   statusBarColor: Colors.transparent
  // ));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:MainHomePage(),
    );
  }
}