part of 'news_cubit.dart';

abstract class NewsState {}

class NewsInitial extends NewsState {}

// ignore: must_be_immutable
class NewsTopHeadLineLoaded extends NewsState {
  List<ArticleModel> topHeadLineNew;
  NewsTopHeadLineLoaded(this.topHeadLineNew);
}

class FeaturedNewsFailure extends NewsState {
  final String errMessage;
  FeaturedNewsFailure(this.errMessage);
}

class FeaturedNewsLoading extends NewsState {

  FeaturedNewsLoading();
}