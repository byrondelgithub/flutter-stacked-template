import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'example_view_model.dart';

@RoutePage()
class ExampleView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ExampleViewModel>.reactive(
      builder: (context, model, child) {
        return Scaffold(
          appBar: AppBar(),
          body: Center(
            child: Text(model.title),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: model.updateCounter,
          ),
        );
      },
      viewModelBuilder: () => ExampleViewModel(),
    );
  }
}
