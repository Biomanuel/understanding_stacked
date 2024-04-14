import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:un_stacked/app/app.dialogs.dart';
import 'package:un_stacked/app/app.locator.dart';
import 'package:un_stacked/app/app.router.dart';
import 'package:un_stacked/core/models/detail_model.dart';
import 'package:un_stacked/core/services/counter_service.dart';

class HomeScreenViewModel extends ReactiveViewModel {
  final NavigationService _navigationService = locator<NavigationService>();
  final CounterService _counterService = locator<CounterService>();
  final DialogService _dialogService = locator<DialogService>();

  int get orangeCount => _counterService.orangeCount;
  int get mangoCount => _counterService.mangoCount;

  void mangoCardClickAction() {
    _navigationService.navigateToMangoCounterScreen();
  }

  void orangeCardClickAction() {
    _navigationService.navigateToOrangeCountScreen();
  }

  void showDetails(String fruitName, int count) async {
    DialogResponse? res = await _dialogService.showCustomDialog(
      variant: DialogType.fruitCount,
      data: Details(name: fruitName, count: count),
      barrierDismissible: true,
    );

    if (res?.confirmed == true) {
      // TODO: Do the confirm thing.
    } else {
      // TODO: Do something else.
    }
  }

  num add(num a, num b) {
    return a + b;
  }

  @override
  List<ListenableServiceMixin> get listenableServices => [_counterService];
}
