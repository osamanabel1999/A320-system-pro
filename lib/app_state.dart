import 'package:flutter/material.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  int _AbnormalProcedure = 0;
  int get AbnormalProcedure => _AbnormalProcedure;
  set AbnormalProcedure(int value) {
    _AbnormalProcedure = value;
  }

  int _Limition = 0;
  int get Limition => _Limition;
  set Limition(int value) {
    _Limition = value;
  }
}
