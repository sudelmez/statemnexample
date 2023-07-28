import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:statemnexample/counter.dart';

class InfoView extends StatelessWidget {
  final Counter counter;

  const InfoView({required this.counter, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: counter.color,
      body: Align(
        alignment: Alignment.center,
        child: Observer(
          builder: (_) => Text(
            counter.text,
          ),
        ),
      ),
    );
  }
}
