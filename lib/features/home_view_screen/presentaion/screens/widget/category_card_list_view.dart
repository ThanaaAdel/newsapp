import 'package:flutter/material.dart';
import 'package:newsapp/core/assets.dart';
import 'package:newsapp/features/home_view_screen/data/model/category_model.dart';
import 'package:newsapp/features/home_view_screen/presentaion/screens/widget/category_card.dart';

class CategoryCardListView extends StatelessWidget {
  CategoryCardListView({Key? key}) : super(key: key);
  final List<CategoryModel> categories = [
    CategoryModel(image: AssetsData.businessImage, categoryName: 'Business'),
    CategoryModel(
        image: AssetsData.entertanmentImage, categoryName: 'Entertainment'),
    CategoryModel(image: AssetsData.healthImage, categoryName: 'Health'),
    CategoryModel(image: AssetsData.scienceImage, categoryName: 'Science'),
    CategoryModel(
        image: AssetsData.technologyImage, categoryName: 'Technology'),
    CategoryModel(image: AssetsData.sportsImage, categoryName: 'Sports'),
    CategoryModel(image: AssetsData.generalImage, categoryName: 'General'),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.15,
      child: ListView.builder(
        itemCount: categories.length,
        physics: const AlwaysScrollableScrollPhysics(),
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => CategoryCard(
          category: categories[index],
        ),
      ),
    );
  }
}
