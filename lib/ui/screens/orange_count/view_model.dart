import 'package:flutter/cupertino.dart';
import 'package:stacked/stacked.dart';
import 'package:un_stacked/app/app.locator.dart';
import 'package:un_stacked/core/services/counter_service.dart';

class OrangeCountViewModel extends FutureViewModel {
  final CounterService _counterService = locator<CounterService>();
  final ValueKey<String> key = const ValueKey<String>("key");

  int get counter => _counterService.orangeCount;

  void incrementCounter() {
    _counterService.incrementOrangeCount();
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
