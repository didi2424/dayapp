import 'package:dayapp/screens/buttom_bar.dart';
import 'package:dayapp/utils/app_styles.dart';
import 'package:flutter/material.dart';

void main() {
  ///asdasd
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: primary,
      ),
      debugShowCheckedModeBanner: false,
      home: const ButtomBar(),
    );
  }
}
