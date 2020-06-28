import 'package:flutter/material.dart';

class MainModel extends ChangeNotifier {
  String kboyText = 'KBOY';
  int num = 0;

  void changeKboyText() {
    kboyText = 'kboyさんかっこいい!!!';
    notifyListeners();
  }

  void countup() {
    num = num + 1;
    notifyListeners();
  }

  void countclear() {
    num = 0;
    notifyListeners();
  }

}