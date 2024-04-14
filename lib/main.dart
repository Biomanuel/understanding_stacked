import 'package:flutter/material.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:un_stacked/app/app.router.dart';
import 'package:un_stacked/app/application.dart';

import 'ui/screens/home/home_screen.dart';

void main() async {
  await Application.initialize();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      onGenerateRoute: StackedRouter().onGenerateRoute,
      navigatorKey: StackedService.navigatorKey,
      navigatorObservers: [
        StackedService.routeObserver,
      ],
      home: const HomeScreen(),
    );
  }
}
