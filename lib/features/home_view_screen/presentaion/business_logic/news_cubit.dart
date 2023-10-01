import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:newsapp/features/home_view_screen/data/data_source/news_services.dart';
import 'package:newsapp/features/home_view_screen/data/model/articals/ArticleModel.dart';
part 'news_state.dart';

class NewsCubit extends Cubit<NewsState> {
  NewsCubit(this.topHeadLineNewsSevices) : super(NewsInitial());
  final TopHeadLineNewsSevices topHeadLineNewsSevices;
  Future<List<ArticleModel>> getTopHeadLinesNews({required String category}) async {
   emit(FeaturedNewsLoading());
    Map<String, dynamic> listOfTopHeadLinesNews = await topHeadLineNewsSevices.getAllNews(category: category);
    List<dynamic> articles = listOfTopHeadLinesNews['articles'];
    List<ArticleModel> articlesList = [];
    for (var article in articles) {
      ArticleModel articleModel = ArticleModel.fromJson(article);
      articlesList.add(articleModel);
    }
    if(listOfTopHeadLinesNews ['status']== 'ok'){
      emit(NewsTopHeadLineLoaded(articlesList));
    }
    else if(listOfTopHeadLinesNews ['status']== 'error'){
      emit(FeaturedNewsFailure('there are error in the data '));
    }


    print('the list of top head lines : ${articlesList[1].subTitle}');
    return articlesList;
  }
}
