import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:un_stacked/core/models/detail_model.dart';
import 'package:un_stacked/ui/dialog/fruit_count/view_model.dart';

class FruitCountDialog extends StackedView<FruitCountDialogViewModel> {
  final Function(DialogResponse<dynamic>) completer;
  final DialogRequest<dynamic> request;

  const FruitCountDialog(
      {super.key, required this.completer, required this.request});

  @override
  Widget builder(BuildContext context, FruitCountDialogViewModel viewModel,
      Widget? child) {
    Details? details = request.data as Details?;
    return Center(
      child: Wrap(
        children: [
          Card(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Text(
                    request.title ?? details?.name ?? "Title",
                    style: TextStyle(fontSize: 16),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: Text(viewModel.count.toString(),
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w700)),
                  ),
                  Row(
                    children: [
                      TextButton(
                          onPressed: () {
                            viewModel.increment();
                          },
                          child: Text("Increase")),
                      TextButton(
                          onPressed: () {
                            completer(DialogResponse(confirmed: true));
                          },
                          child: Text("Close")),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  FruitCountDialogViewModel viewModelBuilder(BuildContext context) {
    Details? details = request.data as Details?;
    return FruitCountDialogViewModel(details?.name ?? "");
  }
}
