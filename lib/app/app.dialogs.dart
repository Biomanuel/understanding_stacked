// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedDialogGenerator
// **************************************************************************

import 'package:stacked_services/stacked_services.dart';

import '../ui/dialog/fruit_count/fruit_count.dart';
import 'app.locator.dart';

enum DialogType {
  fruitCount,
}

void setupDialogUi() {
  final dialogService = locator<DialogService>();

  final Map<DialogType, DialogBuilder> builders = {
    DialogType.fruitCount: (context, request, completer) =>
        FruitCountDialog(request: request, completer: completer),
  };

  dialogService.registerCustomDialogBuilders(builders);
}
