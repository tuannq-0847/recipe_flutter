import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomeRecipe();
  }
}

class HomeRecipe extends State<HomeWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          centerTitle: true,
          title: Text("My Recipe"),
          actions: [
            Image(image: AssetImage('assets/avatar.png'),
              fit: BoxFit.fill,
              height: 20,
              width: 20,)
          ],
        ),
        body: Text("This is body"));
  }
}
