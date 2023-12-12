import 'package:flutter/material.dart';

import '../widgets/category_list_view.dart';
import '../widgets/news_list_view_builder.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'News App',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(
              child: CategoryListView(),
            ),
            const SliverToBoxAdapter(
              child: SizedBox(
                height: 30,
              ),
            ),

            const NewsListViewBuilder(
              category: 'general',
            ),

            /// same Sliver List but The Sliver List is Best Way
            // const SliverToBoxAdapter(
            //   child: NewsListView(),
            // ),
          ],
        ),
      ),
    );
  }
}
