import 'package:flutter/material.dart';
import 'package:newsapp/services/articalmodel.dart';
import 'package:newsapp/widget/newtile.dart';


class NewsListView extends StatelessWidget {
  final List<ArticleModel> articles;
  static String id = 'NewsListView';
  const NewsListView({super.key, required this.articles});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: articles.length,
        (context, index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 22),
            child: NewsTile(
              articleModel: articles[index],
            ),
          );
        },
      ),
    );
  }
}
