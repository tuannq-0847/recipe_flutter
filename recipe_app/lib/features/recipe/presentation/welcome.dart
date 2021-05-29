import 'package:flutter/material.dart';

class WelcomeToRecipe extends StatelessWidget {
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
                  Text(
                    'Cooking a\nDelicious Food\nEasily',
                    style: TextStyle(color: Colors.white, fontSize: 24),
                  ),
                   SizedBox(height: 10),
                  Text(
                    'Discover more than 1200 food\nrecipes in you hands and cooking\nit easily!',
                    style: TextStyle(color: Colors.white60, fontSize: 12),
                  ),
                  SizedBox(height: 10),
                  Center(
                    child: Container(         
                        width: double.infinity,
                        child: TextButton(
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all(Colors.green),
                                shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(18.0)))),
                            onPressed: () {},
                            child: Text(
                              "Let's go",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16),
                            ))),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    ));
  }
}
