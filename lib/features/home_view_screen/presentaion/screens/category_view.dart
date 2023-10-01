import 'package:flutter/material.dart';
import 'package:newsapp/features/home_view_screen/presentaion/screens/widget/news_list_view_builder.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({super.key, required this.category});

  final String category;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      ListView(
        children: [ NewListViewBuilder(
          category: category,
        ),],
      ),

    );
  }
}