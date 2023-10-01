import 'package:flutter/material.dart';
import 'package:newsapp/core/gaps.dart';
import 'package:newsapp/features/home_view_screen/data/model/articals/ArticleModel.dart';

class NewsTitle extends StatelessWidget {
  const NewsTitle({
    Key? key,
    required this.article,
  }) : super(key: key);
  final ArticleModel article;
  @override
  Widget build(BuildContext context) {
    return
      Padding(
        padding: const EdgeInsets.only(bottom: 30,left: 20,right: 20),
        child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(6),
              child: Image.network(
                article.image ??'https://th.bing.com/th?id=OIP.VW2SNOwPT86hvaKCdXwgqAHaE7&w=306&h=203&c=8&rs=1&qlt=90&o=6&pid=3.1&rm=2',
                height: 200,
                width: double.infinity,
                fit: BoxFit.cover,
              )),
          Gaps.vGap10,
          Text(
            article.title ,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              color: Colors.black87,
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
          Gaps.vGap10,
          Text(
            article.subTitle ?? '',
            maxLines: 2,
            style: const TextStyle(color: Colors.grey, fontSize: 14),
          )
        ],
    ),
      );
  }
}
