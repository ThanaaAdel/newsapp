import 'package:newsapp/core/api_services.dart';
import 'package:newsapp/features/home_view_screen/data/model/articals/ArticleModel.dart';

class TopHeadLineNewsSevices {
  Future<Map<String, dynamic>> getAllNews({required String category}) async {
    Map<String, dynamic> data = await Api().get(
        uri: 'https://newsapi.org/v2/top-headlines?country=us&apiKey=cff26e6931b44a0b9982b1892f5f057c&category=$category');
    print('the data from api services : $data');
    return data;
  }
}
