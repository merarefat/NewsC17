import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:news/Provider/ThemeProvider.dart';
import 'package:news/Model/category.dart';
import 'package:news/home/category_fragement/Category_item.dart';

class CategoryFregment extends StatelessWidget {
  const CategoryFregment({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<SettingsProvider>(context);
    bool isDarkMode = provider.currentTheme == ThemeMode.dark;

    var categoreList = Category.getCategoriesList(isDarkMode);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 24),
          Text(
            'Good Morning \nhere is Some News For You',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          const SizedBox(height: 16),
          Expanded(
            child: ListView.separated(
              itemBuilder: (context, index) {
                return CategoryItem(
                  category: categoreList[index],
                  index: index,
                );
              },
              separatorBuilder: (context, index) => const SizedBox(height: 12),
              itemCount: categoreList.length,
            ),
          ),
        ],
      ),
    );
  }
}