// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i4;
import 'package:flutter/material.dart' as _i5;
import 'package:flutter_stacked_template/ui/views/card_view/card_view.dart'
    as _i1;
import 'package:flutter_stacked_template/ui/views/example_view/example_view.dart'
    as _i2;
import 'package:flutter_stacked_template/ui/views/second_view/second_view.dart'
    as _i3;

abstract class $AppRouter extends _i4.RootStackRouter {
  $AppRouter([_i5.GlobalKey<_i5.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    SilencePLSCardView.name: (routeData) {
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i1.SilencePLSCardView(),
      );
    },
    ExampleView.name: (routeData) {
      final args = routeData.argsAs<ExampleViewArgs>();
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i2.ExampleView(
          key: args.key,
          idk: args.idk,
        ),
      );
    },
    SecondView.name: (routeData) {
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i3.SecondView(),
      );
    },
  };
}

/// generated route for
/// [_i1.SilencePLSCardView]
class SilencePLSCardView extends _i4.PageRouteInfo<void> {
  const SilencePLSCardView({List<_i4.PageRouteInfo>? children})
      : super(
          SilencePLSCardView.name,
          initialChildren: children,
        );

  static const String name = 'SilencePLSCardView';

  static const _i4.PageInfo<void> page = _i4.PageInfo<void>(name);
}

/// generated route for
/// [_i2.ExampleView]
class ExampleView extends _i4.PageRouteInfo<ExampleViewArgs> {
  ExampleView({
    _i5.Key? key,
    required String idk,
    List<_i4.PageRouteInfo>? children,
  }) : super(
          ExampleView.name,
          args: ExampleViewArgs(
            key: key,
            idk: idk,
          ),
          initialChildren: children,
        );

  static const String name = 'ExampleView';

  static const _i4.PageInfo<ExampleViewArgs> page =
      _i4.PageInfo<ExampleViewArgs>(name);
}

class ExampleViewArgs {
  const ExampleViewArgs({
    this.key,
    required this.idk,
  });

  final _i5.Key? key;

  final String idk;

  @override
  String toString() {
    return 'ExampleViewArgs{key: $key, idk: $idk}';
  }
}

/// generated route for
/// [_i3.SecondView]
class SecondView extends _i4.PageRouteInfo<void> {
  const SecondView({List<_i4.PageRouteInfo>? children})
      : super(
          SecondView.name,
          initialChildren: children,
        );

  static const String name = 'SecondView';

  static const _i4.PageInfo<void> page = _i4.PageInfo<void>(name);
}
