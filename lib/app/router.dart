import 'package:auto_route/auto_route.dart';
import 'package:flutter_stacked_template/app/router.gr.dart';
import 'package:injectable/injectable.dart';

@LazySingleton()
@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  final List<AutoRoute> routes = [
    AutoRoute(path: "/", page: SecondView.page),
    AutoRoute(page: ExampleView.page)
  ];
}