import 'package:stacked/stacked.dart';

class CounterService with ListenableServiceMixin {
  int _mangoCount = 0;
  int _orangeCount = 0;

  int get mangoCount => _mangoCount;

  int get orangeCount => _orangeCount;

  void incrementMangoCount() {
    _mangoCount++;
    notifyListeners();
  }

  void incrementOrangeCount() {
    _orangeCount++;
    notifyListeners();
  }
}
