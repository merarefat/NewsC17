import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:news/Provider/ThemeProvider.dart';
import 'package:news/Model/category.dart';
import 'package:news/home/category_fragement/Category_item.dart';

typedef OnCategoryItemCleck = void Function(Category);

class CategoryFregment extends StatelessWidget {
  OnCategoryItemCleck onCategoryItemCleck;

  CategoryFregment({super.key, required this.onCategoryItemCleck});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<SettingsProvider>(context);
    bool isDarkMode = provider.currentTheme == ThemeMode.dark;
    var categoreList = Category.getCategoriesList(isDarkMode);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 24),
            Text(
              'Good Morning \nhere is Some News For You',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: 16),
            ListView.separated(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              //بتخليني اشيل الاسكرول بتاع اليست
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    onCategoryItemCleck(categoreList[index]);
                  },
                  child: CategoryItem(
                    category: categoreList[index],
                    index: index,
                  ),
                );
              },
              separatorBuilder: (context, index) => const SizedBox(height: 12),
              itemCount: categoreList.length,
            ),
          ],
        ),
      ),
    );
  }
}