import 'package:aviz/Features/Category/data/model/category.dart';
import 'package:aviz/Features/Category/data/repository/category_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';

part 'category_event.dart';
part 'category_state.dart';

class CategoryBloc extends Bloc<CategoryEvent, CategoryState> {
  final ICategoryRepository categoryRepository;
  CategoryBloc(this.categoryRepository) : super(CategoryInitialState()) {
    on<CategoryEvent>((event, emit) async {
      emit(CategoryLoadingState());
      var CategoryList = await categoryRepository.getCategories();
      emit(CategotryRequestSuccessState(categories: CategoryList));
    });
  }
}
