import 'package:flutter/material.dart';
import 'package:plantationapp/const/const.dart';
import 'package:plantationapp/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: "Plant App",
      theme: ThemeData(
        scaffoldBackgroundColor: kBackgroundColor,
        primaryColor: kPrimaryColor,
        textTheme: Theme.of(context).textTheme.apply(
          bodyColor: kTextColor
        ),
        visualDensity: VisualDensity.adaptivePlatformDensity
      ),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

