import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:un_stacked/ui/screens/home/view_model.dart';

class HomeScreen extends StackedView<HomeScreenViewModel> {
  const HomeScreen({super.key});

  @override
  Widget builder(
      BuildContext context, HomeScreenViewModel viewModel, Widget? child) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Home Screen"),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: InkWell(
                  onTap: viewModel.mangoCardClickAction,
                  child: Card(
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Mango Count:"),
                                IconButton(
                                    onPressed: () => viewModel.showDetails(
                                        "Mango", viewModel.mangoCount),
                                    icon: Icon(Icons.emergency_share))
                              ]),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "${viewModel.mangoCount}",
                              style: const TextStyle(
                                  fontWeight: FontWeight.w600, fontSize: 20),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Expanded(
                child: InkWell(
                  onTap: viewModel.orangeCardClickAction,
                  child: Card(
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Orange Count:"),
                                IconButton(
                                    onPressed: () => viewModel.showDetails(
                                        "Orange", viewModel.orangeCount),
                                    icon: Icon(Icons.emergency_share))
                              ]),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "${viewModel.orangeCount}",
                              style: const TextStyle(
                                  fontWeight: FontWeight.w600, fontSize: 20),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  @override
  HomeScreenViewModel viewModelBuilder(BuildContext context) {
    return HomeScreenViewModel();
  }
}
