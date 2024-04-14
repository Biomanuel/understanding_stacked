import 'package:flutter/cupertino.dart';
import 'package:stacked/stacked.dart';
import 'package:un_stacked/app/app.locator.dart';
import 'package:un_stacked/core/services/counter_service.dart';

class MangoCounterViewModel extends FutureViewModel {
  final CounterService _counterService = locator<CounterService>();
  final ValueKey<String> key = const ValueKey<String>("key");

  int get counter => _counterService.mangoCount;

  void incrementCounter() {
    _counterService.incrementMangoCount();
    notifyListeners();
  }

  Future<String> loadWelcomeMessage() async {
    return "Welcome Mr. Damilare";
  }

  @override
  Future futureToRun() async {
    await loadWelcomeMessage();
  }
}
