import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart';
import 'package:recipe_app/features/recipe/domain/entities/recipe.dart';

abstract class RecipeRemoteDataSource{
  Future<RecipeModel> getRecipes();
}

class RecipeRemoteDataSourceImpl extends RecipeRemoteDataSource{
  final Client _client;

  RecipeRemoteDataSourceImpl(@required this._client);

  @override
  Future<RecipeModel> getRecipes() async {
    final response = await _client.get(
      Uri.parse('https://api.edamam.com/api/recipes/v2?type=public&q=wine&app_id=ec909226&app_key=dcb1411cfc5f1e91d9937ed18ca65b62'),
      headers: {
        'Content-Type': 'application/json',
      },
    );

    if(response.statusCode == 200){
      return RecipeModel.fromJson(json.decode(response.body));
    }else{
      throw Exception("unknown error");
    }
  }
}
