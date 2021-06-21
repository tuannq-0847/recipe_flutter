import 'dart:collection';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TranslateText extends StatefulWidget {
  List<Widget> translateText;

  TranslateText(List<Widget> translateText) {
    this.translateText = translateText;
  }

  @override
  State<StatefulWidget> createState() =>
      _TranslateAnimatedTextState(translateText);
}

class _TranslateAnimatedTextState extends State<TranslateText>
    with TickerProviderStateMixin {
  AnimationController animController;
  AnimationController animController2;
  Animation<double> animation;
  Animation<double> animation2;
  List<Widget> translateText = [];

  _TranslateAnimatedTextState(List<Widget> translateText) {
    this.translateText = translateText;
  }

  @override
  void initState() {
    super.initState();
    animController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 1000));
    animController2=AnimationController(vsync: this, duration: Duration(milliseconds: 1000));
    animation = Tween<double>(begin: -1000, end: 0).animate(animController)
      ..addListener(() {
        setState(() {});
      });
    animController.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        print("Animation completed: done");
        animation2 = Tween<double>(begin: -1000, end: 0).animate(animController2)
          ..addListener(() {
            setState(() {});
          });
        animController2.forward();
      }
    });
    animController.forward();
  }

  @override
  void dispose() {
    super.dispose();
    animController.dispose();
    animController2.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // print("Animation animation2: ${animation2.value}");

    return Column(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        animation2 == null
            ? Container()
            : Transform.translate(
                offset: Offset(0, animation2.value), child: translateText[0]),
        Transform.translate(
            offset: Offset(0, animation.value), child: translateText[1])
      ],
    );
  }
}
