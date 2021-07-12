import 'package:dartz/dartz.dart';
import 'package:recipe_app/core/error/failures.dart';
import 'package:recipe_app/features/recipe/domain/entities/recipe.dart';

abstract class RecipeRepository {

  Future<Either<Failure,RecipeModel>> getRecipes();
}
