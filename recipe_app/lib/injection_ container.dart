import 'package:get_it/get_it.dart';
import 'package:http/http.dart' as http;
import 'package:recipe_app/features/recipe/data/datasources/recipe_remote_data_source.dart';
import 'package:recipe_app/features/recipe/data/repositories/recipe_repository_impl.dart';

GetIt getIt = GetIt.instance;

Future<void> initGetIt() async {
  getIt
    ..registerLazySingleton(() => http.Client())
    ..registerLazySingleton(() => RecipeRemoteDataSourceImpl(getIt()))
    ..registerLazySingleton(() => RecipeRepositoryImpl(getIt()));
}
