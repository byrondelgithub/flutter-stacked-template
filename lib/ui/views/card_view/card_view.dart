import 'package:auto_route/annotations.dart';
import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_stacked_template/ui/views/widgets/widgets.dart';
import 'package:stacked/stacked.dart';
import 'card_view_model.dart';

@RoutePage()
class SilencePLSCardView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SilencePLSCardViewModel>.reactive(
      builder: (context, model, child) {
        return GestureDetector(
          onHorizontalDragUpdate: (details) {
            double sensitivity = 5;
            if (details.delta.dx > sensitivity && model.cardState == CardSide.FRONT) {
              model.flipCard();
            }else if (details.delta.dx < -sensitivity && model.cardState == CardSide.BACK){
              model.flipCard();
            }
          },
          child: FlipCard(
            controller: model.controller,
            speed: 1250,
            flipOnTouch: false,
            side: CardSide.BACK,
            front: CardFront(),
            back: CardBack(),
          ),
        );
      },
      viewModelBuilder: () => SilencePLSCardViewModel(),
    );
  }
}
