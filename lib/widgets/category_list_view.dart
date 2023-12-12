import 'package:flutter/material.dart';

import '../models/category_model.dart';
import 'category_card.dart';

class CategoryListView extends StatelessWidget {
  CategoryListView({super.key});

  List<CategoryModel> categoryList = [
    CategoryModel(image: 'assets/images/Business.jpg', name: 'Business'),
    CategoryModel(
        image: 'assets/images/Entertainment.jpg', name: 'Entertainment'),
    CategoryModel(image: 'assets/images/Health.jpg', name: 'Health'),
    CategoryModel(image: 'assets/images/Science.jpg', name: 'Science'),
    CategoryModel(image: 'assets/images/Sports.png', name: 'Sports'),
    CategoryModel(image: 'assets/images/Technology.png', name: 'Technology'),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categoryList.length,
          itemBuilder: (context, index) {
            return CategoryCard(
              categories: categoryList[index],
            );
          }),
    );
  }
}
