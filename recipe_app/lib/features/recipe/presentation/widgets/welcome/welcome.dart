
import 'package:flutter/material.dart';
import 'package:recipe_app/features/recipe/presentation/widgets/custom/first_time_animated_button.dart';
import 'package:recipe_app/features/recipe/presentation/widgets/custom/translate_text.dart';
import 'package:recipe_app/features/recipe/presentation/widgets/home/home.dart';

class MyStatefulWidget extends StatefulWidget {
  @override
  State<MyStatefulWidget> createState() => WelcomeToRecipe();
}

class WelcomeToRecipe extends State<MyStatefulWidget> {
  double sideLength = 100;
  List<Widget> data = [Text(
    'Cooking a\nDelicious Food\nEasily',
    style: TextStyle(color: Colors.white, fontSize: 24),
  ), Text(
    'Discover more than 1200 food\nrecipes in you hands and cooking\nit easily!',
    style: TextStyle(color: Colors.white60, fontSize: 12),
  )
  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        body: SafeArea(
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Image(
                image: AssetImage('assets/background.jpg'),
                fit: BoxFit.fill,
                height: double.infinity,
                width: double.infinity,
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    gradient: LinearGradient(
                        begin: FractionalOffset.topCenter,
                        end: FractionalOffset.bottomCenter,
                        colors: [
                          Colors.grey.withOpacity(0.0),
                          Colors.black,
                        ],
                        stops: [
                          0.0,
                          0.7
                        ])),
                child: Padding(
                    padding: EdgeInsets.all(32),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TranslateText(data),
                        FirstTimeAnimatedButton((){
                          print("onPressed....");
                          Navigator.push(context,MaterialPageRoute(builder: (context) => HomeWidget()));
                        })
                      ],
                    )
                ),
              )
            ],
          ),
        ));
  }
}
