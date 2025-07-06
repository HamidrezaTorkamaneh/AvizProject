part of 'category_bloc.dart';


@immutable
abstract class CategoryState {}

final class CategoryInitialState extends CategoryState {}

class CategotryRequestSuccessState extends CategoryState {
  Either<String, List<Category>> categories;

  CategotryRequestSuccessState({required this.categories});
}

class CategoryLoadingState extends CategoryState {}
