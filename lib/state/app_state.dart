import 'dart:async';
import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:pro/state/data_model.dart';

class AppState extends ChangeNotifier {
  int temp = 10;
  var a = "we do the best";
  var b = 'fuck the rest';

  void updateTemp(int temp) {
    this.temp = temp;
    notifyListeners();
  }

  // timer function
  int start = 0;
  void updateStart(int start) {
    this.start = start;
    notifyListeners();
  }

  void getTimer() {
    Timer.periodic(Duration(seconds: 1), (timer) {
      updateStart(timer.tick);
    });
  }

  // provider with async
  String name = 'code with khari';

  void updateName(String name) {
    this.name = name;
    notifyListeners();
  }

  Future<void> getName(String name) async {
    Future.delayed(Duration(seconds: 5), () {
      updateName(name);
    });
  }

  // change the widget

  bool change = false;
  void updateWidget() {
    change = !change;
    notifyListeners();
  }

  // provider working with  resr api

  List<DataModel> dataList = [];
  void updateDataModel(List<DataModel> dataList) {
    this.dataList = dataList;
    notifyListeners();
  }
}
