import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:statemnexample/modules/provider/provider_manager.dart';
import 'package:statemnexample/product/home/home_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ProviderManager>(
      create: (context) => ProviderManager(),
      child: MaterialApp(
        home: HomeView(),
      ),
    );
  }
}
