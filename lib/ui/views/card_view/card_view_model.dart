import 'package:flip_card/flip_card.dart';
import 'package:flip_card/flip_card_controller.dart';
import 'package:logger/logger.dart';
import 'package:stacked/stacked.dart';

class SilencePLSCardViewModel extends BaseViewModel {
  FlipCardController _controller = FlipCardController();
  FlipCardController get controller => _controller;
  CardSide _cardState = CardSide.BACK;
  CardSide get cardState => _cardState;
  

  void flipCard(){
      if (_cardState == CardSide.BACK){
        _cardState = CardSide.FRONT;
      }else{
        _cardState = CardSide.BACK;
      }
      _controller.toggleCard();
  }

}
