import 'package:flutter/material.dart';
import 'package:juicygo/screen/bottomnavbar_screen.dart';
import 'package:juicygo/screen/home_page.dart';

void main() {
  runApp(const juicyGo());
}

class juicyGo extends StatelessWidget {
  const juicyGo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomeScreen(), debugShowCheckedModeBanner: false);
  }
}
