import 'package:flutter/material.dart';
import 'package:statemnexample/product/home/home_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SafeArea(child: HomeView()),
    );
  }
}
