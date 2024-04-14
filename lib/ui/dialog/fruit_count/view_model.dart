import 'package:stacked/stacked.dart';
import 'package:un_stacked/app/app.locator.dart';
import 'package:un_stacked/core/services/counter_service.dart';

class FruitCountDialogViewModel extends ReactiveViewModel {
  final _counterService = locator<CounterService>();
  final String fruitName;

  FruitCountDialogViewModel(this.fruitName);

  int get count {
    if (fruitName.toLowerCase().contains("mango")) {
      return _counterService.mangoCount;
    } else {
      return _counterService.orangeCount;
    }
  }

  void increment() {
    if (fruitName.toLowerCase().contains("mango")) {
      _counterService.incrementMangoCount();
    } else {
      _counterService.incrementOrangeCount();
    }
  }

  @override
  List<ListenableServiceMixin> get listenableServices => [_counterService];
}
