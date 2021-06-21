import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Function _onPressed;

// ignore: must_be_immutable
class FirstTimeAnimatedButton extends StatefulWidget {

  FirstTimeAnimatedButton(Function onPressed) {
    _onPressed = onPressed;
  }

  @override
  State<StatefulWidget> createState() => _AnimatedButtonState();
}

class _AnimatedButtonState extends State<FirstTimeAnimatedButton>
    with SingleTickerProviderStateMixin {
  AnimationController animController;
  Animation<double> animation;
  double sideLength = 100;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    animController =
        AnimationController(duration: Duration(milliseconds: 600), vsync: this);
    animation = Tween<double>(
      begin: 100,
      end: 2000,
    ).animate(animController)
      ..addListener(() {
        setState(() {
          sideLength = animation.value;
        });
      });
    animController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: AnimatedContainer(
          width: sideLength,
          duration: const Duration(milliseconds: 500),
          curve: Curves.easeIn,
          child: TextButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.green),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0)))),
              onPressed: () {
                // ignore: unnecessary_statements
                _onPressed();
              },
              child: Text(
                "Let's go",
                style: TextStyle(color: Colors.white, fontSize: 16),
              ))),
    );
  }

  @override
  void dispose() {
    animController.dispose();
    super.dispose();
  }
}
