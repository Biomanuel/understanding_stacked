import 'package:un_stacked/app/app.bottomsheets.dart';
import 'package:un_stacked/app/app.dialogs.dart';
import 'package:un_stacked/app/app.locator.dart';

class Application {
  static Future<void> initialize() async {
    // await Firebase.initializeApp();
    setupLocator();
    setupDialogUi();
    setupBottomSheetUi();
  }
}
