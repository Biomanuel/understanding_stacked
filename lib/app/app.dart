import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:un_stacked/core/services/counter_service.dart';
import 'package:un_stacked/core/services/image_picker.dart';
import 'package:un_stacked/ui/dialog/fruit_count/fruit_count.dart';
import 'package:un_stacked/ui/screens/home/home_screen.dart';
import 'package:un_stacked/ui/screens/mango_count/counter_screen.dart';
import 'package:un_stacked/ui/screens/orange_count/orange_count.dart';

@StackedApp(
  routes: [
    AdaptiveRoute(page: HomeScreen),
    AdaptiveRoute(page: MangoCounterScreen),
    AdaptiveRoute(page: OrangeCountScreen),
  ],
  bottomsheets: [],
  dialogs: [
    StackedDialog(classType: FruitCountDialog),
  ],
  dependencies: [
    LazySingleton(classType: ImagePicker),
    Singleton(classType: NavigationService),
    LazySingleton(classType: DialogService),
    LazySingleton(classType: BottomSheetService),
    LazySingleton(classType: SnackbarService),
    LazySingleton(classType: CounterService),
  ],
)
class AppSetup {}
