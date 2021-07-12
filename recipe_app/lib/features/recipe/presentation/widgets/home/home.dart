import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:recipe_app/features/recipe/domain/entities/recipe.dart';
import 'package:recipe_app/features/recipe/domain/repositories/recipe_repository.dart';

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
          title: Text(
            "My Recipe",
            style: TextStyle(color: HexColor("#FC8B56")),
          ),
          leading: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset("assets/ico_menu.png"),
          ),
          actions: [
            Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                  "assets/avatar.png",
                ))
          ],
        ),
        body: WillPopScope(
            child: Scaffold(
              body: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Text(
                        "Promo recipe",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 22),
                      )
                    ],
                  ),
                ),
              ),
            ),
            onWillPop: () {
              print("clicked back....");
              SystemNavigator.pop();
            }));
  }
}

class HexColor extends Color {
  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF" + hexColor;
    }
    return int.parse(hexColor, radix: 16);
  }

  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
}
