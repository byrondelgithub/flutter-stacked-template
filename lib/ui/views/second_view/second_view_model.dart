import 'package:flutter_stacked_template/app/locator.dart';
import 'package:flutter_stacked_template/app/router.dart';
import 'package:flutter_stacked_template/app/router.gr.dart';
import 'package:logger/logger.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class SecondViewModel extends BaseViewModel {
  final AppRouter _router = locator<AppRouter>();
  final String _title = "second view";
  String get title => _title;

  Future navigateHome() async {
    await _router.navigate(ExampleView(idk: "asd"));
  }
}
