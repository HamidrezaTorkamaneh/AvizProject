import 'package:aviz/Constants/color_constants.dart';
import 'package:aviz/DI/di.dart';
import 'package:aviz/Features/Category/bloc/category_bloc.dart';
import 'package:aviz/Widgets/Category_card.dart';
import 'package:aviz/Widgets/custom_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({super.key});

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: ((context) {
        CategoryBloc categoryBloc = CategoryBloc(locator.get());
        categoryBloc.add(CategoryGetInitializedData());
        return categoryBloc;
      }),
      child: ViewContainer(),
    );
  }
}

class ViewContainer extends StatelessWidget {
  const ViewContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.white,
      statusBarIconBrightness: Brightness.dark,
      systemNavigationBarColor: Colors.white,
      systemNavigationBarIconBrightness: Brightness.dark,
    ));
    return BlocBuilder<CategoryBloc, CategoryState>(builder: (context, state) {
      return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: CustomScrollView(
            slivers: [
              SliverAppBar(
                title:
                    Image.asset("assets/images/logo_with_not_background.png"),
                centerTitle: true,
                backgroundColor: Colors.transparent,
                actions: [
                  IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: CustomIcons(
                          icon: 'arrow_back', color: Colors.black, size: 20)),
                ],
              ),
              if (state is CategoryLoadingState) ...{
                SliverToBoxAdapter(
                  child: Center(
                    child: SizedBox(
                      height: 24,
                      width: 24,
                      child: CircularProgressIndicator(),
                    ),
                  ),
                ),
              },
              if (state is CategotryRequestSuccessState) ...{
                state.categories.fold((l) {
                  return SliverToBoxAdapter(
                    child: Center(
                      child: Text(l),
                    ),
                  );
                }, (categoryList) {
                  return SliverToBoxAdapter(
                    child: SizedBox(
                      height: 420,
                      child: ListView.builder(
                          reverse: true,
                          scrollDirection: Axis.vertical,
                          itemCount: categoryList.length,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 10),
                              child: CategoryCard(categoryList[index]),
                            );
                          }),
                    ),
                  );
                })
              }
            ],
          ),
        ),
      );
    });
  }
}
