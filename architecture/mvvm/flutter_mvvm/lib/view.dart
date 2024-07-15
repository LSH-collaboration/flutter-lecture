// view.dart
import 'package:flutter/material.dart';
import 'view_model.dart';

class CounterView extends StatefulWidget {
  @override
  _CounterViewState createState() => _CounterViewState();
}

class _CounterViewState extends State<CounterView> {
  final CounterViewModel _viewModel = CounterViewModel();

  @override
  void initState() {
    super.initState();
    _viewModel.incrementCounter(); // Initial increment for demonstration
  }

  @override
  void dispose() {
    _viewModel.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter MVVM Example'),
      ),
      body: Center(
        child: StreamBuilder<int>(
          stream: _viewModel.countStream,
          initialData: 0,
          builder: (context, snapshot) {
            return Text(
              'Counter: ${snapshot.data}',
              style: TextStyle(fontSize: 24),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _viewModel.incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
