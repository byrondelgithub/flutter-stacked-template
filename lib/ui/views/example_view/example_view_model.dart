import 'package:logger/logger.dart';
import 'package:stacked/stacked.dart';

class ExampleViewModel extends BaseViewModel {
  final String _title = "hola";
  String get title => "$_title count: $counter";

  int _counter = 0;
  int get counter => _counter;

  void updateCounter() {
    _counter ++;
    notifyListeners();
  }
}
