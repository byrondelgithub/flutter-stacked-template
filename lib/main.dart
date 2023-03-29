import 'package:flutter/material.dart';
import 'package:flutter_stacked_template/app/locator.dart';
import 'package:flutter_stacked_template/app/router.dart';

void main() {
  configureDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final AppRouter _router = locator<AppRouter>();
    return MaterialApp.router(
      routerConfig: _router.config(),
    );
  }
}