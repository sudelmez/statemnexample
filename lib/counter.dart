import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

// Include generated file
part 'counter.g.dart';

// This is the class used by rest of your codebase
class Counter = _Counter with _$Counter;

// The store-class
abstract class _Counter with Store {
  @observable
  Color color = Colors.white;
  String text = "";

  @action
  void sendColor(Color newcolor) {
    color = newcolor;
  }

  void sendText(String newtext) {
    text = newtext;
  }
}