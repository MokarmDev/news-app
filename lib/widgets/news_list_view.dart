import 'package:flutter/material.dart';
import 'package:newsapp/widgets/news_tile.dart';

import '../models/articles_model.dart';

class NewsListView extends StatelessWidget {
  final List<ArticleModel> article;

  const NewsListView({super.key, required this.article});

  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildBuilderDelegate(
      childCount: article.length,
      (context, index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 22),
          child: NewsTile(
            articlesModel: article[index],
          ),
        );
      },
    ));
  }
}
