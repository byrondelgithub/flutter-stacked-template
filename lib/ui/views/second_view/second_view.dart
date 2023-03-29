import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_stacked_template/app/locator.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'second_view_model.dart';

@RoutePage()
class SecondView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SecondViewModel>.reactive(
      builder: (context, model, child) {
        return Scaffold(
          appBar: AppBar(),
          body: Center(
            child: Text(model.title),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: (){
              model.navigateHome();
            }
          ),
        );
      },
      viewModelBuilder: () => SecondViewModel(),
    );
  }
}
