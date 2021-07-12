import 'package:flutter/material.dart';
import 'package:recipe_app/injection_ container.dart' as di;
import 'features/recipe/presentation/widgets/welcome/welcome.dart';

void main() async {
  await di.initGetIt();
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyStatefulWidget(),
  ));
}
