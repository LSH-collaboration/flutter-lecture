// view_model.dart
import 'dart:async';
import 'model.dart';

class CounterViewModel {
  final CounterModel _counterModel = CounterModel();
  final StreamController<int> _countController = StreamController<int>();

  Stream<int> get countStream => _countController.stream;

  void incrementCounter() {
    _counterModel.increment();
    _countController.sink.add(_counterModel.count);
  }

  void dispose() {
    _countController.close();
  }
}
