import 'package:flutter/material.dart';

class ProviderManager extends ChangeNotifier{
  String _text="";
  Color _color=Colors.white;

  String get text=>_text;
  Color get color=>_color;

  void sendText(String newtext) {
    _text=newtext;
    notifyListeners(); 
  }
  void sendColor(Color newcolor) {
    _color=newcolor;
    notifyListeners(); 
  }
}