import 'package:dartz/dartz.dart';
import 'package:flutter/cupertino.dart';
import 'package:recipe_app/core/error/failures.dart';
import 'package:recipe_app/features/recipe/data/datasources/recipe_remote_data_source.dart';
import 'package:recipe_app/features/recipe/domain/entities/recipe.dart';
import 'package:recipe_app/features/recipe/domain/repositories/recipe_repository.dart';

class RecipeRepositoryImpl implements RecipeRepository {
  final RecipeRemoteDataSource recipeRemoteDataSource;

  RecipeRepositoryImpl(this.recipeRemoteDataSource);

  @override
  Future<Either<Failure, RecipeModel>> getRecipes() async {
    try {
      final recipe = await recipeRemoteDataSource.getRecipes();
      return Right(recipe);
    }
    on Exception{
      return Left(ServerFailure());
    }
  }
}
