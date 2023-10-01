import 'package:flutter/material.dart';
import 'package:newsapp/features/home_view_screen/data/model/articals/ArticleModel.dart';
import 'package:newsapp/features/home_view_screen/presentaion/screens/widget/news_title.dart';

class NewsListView extends StatelessWidget {
  final List<ArticleModel> articles;
  const NewsListView({super.key, required this.articles});
  @override
  Widget build(BuildContext context) {
   return ListView.builder(
      itemCount: articles.length,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) =>
          NewsTitle(
        article: articles[index],
      ),

    );

  }
}