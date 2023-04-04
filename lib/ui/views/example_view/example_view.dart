// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'package:flutter_stacked_template/ui/views/card_view/card_view.dart';

import 'example_view_model.dart';

@RoutePage()
class ExampleView extends StatelessWidget {
  String idk;

  ExampleView({
    Key? key,
    required this.idk,
  }) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ExampleViewModel>.reactive(
      builder: (context, model, child) {
        return Scaffold(
          appBar: AppBar(),
          body: SilencePLSCardView(),
          floatingActionButton: FloatingActionButton(
            onPressed: model.updateCounter,
          ),
        );
      },
      viewModelBuilder: () => ExampleViewModel(),
    );
  }
}
