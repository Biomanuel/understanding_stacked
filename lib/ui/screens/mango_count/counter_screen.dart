import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'view_model.dart';

class MangoCounterScreen extends StackedView<MangoCounterViewModel> {
  const MangoCounterScreen({super.key});

  @override
  Widget builder(
      BuildContext context, MangoCounterViewModel viewModel, Widget? child) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Mango Counter"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Builder(builder: (context) {
              if (viewModel.isBusy) {
                return const CircularProgressIndicator();
              }
              if (viewModel.hasErrorForKey("key2")) {
                return Text(
                  "${viewModel.error("key2")}",
                  style: const TextStyle(color: Colors.red),
                );
              }
              return Text(
                '${viewModel.counter}',
                style: Theme.of(context).textTheme.headlineMedium,
              );
            }),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: viewModel.incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }

  @override
  MangoCounterViewModel viewModelBuilder(BuildContext context) {
    return MangoCounterViewModel();
  }
}
