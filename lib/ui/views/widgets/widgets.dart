import 'package:flutter/material.dart';
import 'package:neon_widgets/neon_widgets.dart';

class CardBack extends StatelessWidget {
  final double width;
  late double height = width * 1.4142;
  CardBack({super.key, this.width = 200});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: height,
        width: width,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/imgs/card_back.png"),
              fit: BoxFit.cover),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(
              vertical: ((height + 80) * 0.17094) / 2,
              horizontal: ((width + 50) * 0.24213) / 2),
          child: Center(
              child: Text(
            "Aqui va el logo",
            style: TextStyle(color: Colors.white),
          )),
        ));
  }
}

class CardFront extends StatelessWidget {
  final double width;
  late double height = width * 1.4142;
  CardFront({super.key, this.width = 400});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: height,
        width: width,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/imgs/card_fore.png"),
              fit: BoxFit.cover),
        ),
        child: Padding(
            padding: EdgeInsets.symmetric(
                vertical: ((height + 200) * 0.17094) / 2,
                horizontal: ((width + 50) * 0.24213) / 2),
            child: Stack(children: [
              ListView(
                physics: ClampingScrollPhysics(),
                children: const [
                  NeonText(
                    text: "Title",
                    textSize: 50,
                    textColor: Colors.blue,
                    spreadColor: Colors.cyan,
                    blurRadius: 100,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Aqui iria una descripcion que podria ser larga de cojonesAqui iria una descripcion que podria ser larga de cojonesAqui iria una descripcion que podria ser larga de cojonesAqui iria una descripcion que podria ser larga de cojonesAqui iria una descripcion que podria ser larga de cojonesAqui iria una descripcion que podria ser larga de cojonesAqui iria una descripcion que podria ser larga de cojonesAqui iria una descripcion que podria ser larga de cojonesAqui iria una descripcion que podria ser larga de cojonesAqui iria una descripcion que podria ser larga de cojonesAqui iria una descripcion que podria ser larga de cojonesAqui iria una descripcion que podria ser larga de cojonesAqui iria una descripcion que podria ser larga de cojonesAqui iria una descripcion que podria ser larga de cojonesAqui iria una descripcion que podria ser larga de cojonesAqui iria una descripcion que podria ser larga de cojonesAqui iria una descripcion que podria ser larga de cojonesAqui iria una descripcion que podria ser larga de cojonesAqui iria una descripcion que podria ser larga de cojonesAqui iria una descripcion que podria ser larga de cojonesAqui iria una descripcion que podria ser larga de cojones",
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                ],
              ),
              Container(
                alignment: Alignment.bottomRight,
                child: ElevatedButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (_) => FunkyOverlay(),
                      barrierDismissible: false,
                    );
                  },
                  child: const Text("Avisos!"),
                ),
              )
            ])));
  }
}

class FunkyOverlay extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => FunkyOverlayState();
}

class FunkyOverlayState extends State<FunkyOverlay>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _scaleAnimation;

  @override
  void initState() {
    super.initState();

    _controller =
        AnimationController(vsync: this, duration: Duration(milliseconds: 450));
    _scaleAnimation =
        CurvedAnimation(parent: _controller, curve: Curves.elasticInOut);

    _controller.addListener(() {
      setState(() {});
    });

    _controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Material(
        color: Colors.transparent,
        child: ScaleTransition(
          scale: _scaleAnimation,
          child: NeonContainer(
            containerColor: Colors.black.withAlpha(100),
            borderRadius: BorderRadius.circular(5.0),
            borderColor: Colors.red,
            spreadColor: Colors.red,
            lightSpreadRadius: 1,
            lightBlurRadius: 100,
            child: Padding(
              padding: const EdgeInsets.all(50.0),
              child: Column(mainAxisSize: MainAxisSize.min, children: [
                Text("Well hello there!"),
                TextButton(
                  child: const Text('Approve'),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ]),
            ),
          ),
        ),
      ),
    );
  }
}
