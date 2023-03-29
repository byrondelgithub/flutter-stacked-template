// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i3;
import 'package:flutter/material.dart' as _i4;
import 'package:flutter_stacked_template/ui/views/example_view/example_view.dart'
    as _i1;
import 'package:flutter_stacked_template/ui/views/second_view/second_view.dart'
    as _i2;

abstract class $AppRouter extends _i3.RootStackRouter {
  $AppRouter([_i4.GlobalKey<_i4.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    ExampleView.name: (routeData) {
      return _i3.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i1.ExampleView(),
      );
    },
    SecondView.name: (routeData) {
      return _i3.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i2.SecondView(),
      );
    },
  };
}

/// generated route for
/// [_i1.ExampleView]
class ExampleView extends _i3.PageRouteInfo<void> {
  const ExampleView({List<_i3.PageRouteInfo>? children})
      : super(
          ExampleView.name,
          initialChildren: children,
        );

  static const String name = 'ExampleView';

  static const _i3.PageInfo<void> page = _i3.PageInfo<void>(name);
}

/// generated route for
/// [_i2.SecondView]
class SecondView extends _i3.PageRouteInfo<void> {
  const SecondView({List<_i3.PageRouteInfo>? children})
      : super(
          SecondView.name,
          initialChildren: children,
        );

  static const String name = 'SecondView';

  static const _i3.PageInfo<void> page = _i3.PageInfo<void>(name);
}