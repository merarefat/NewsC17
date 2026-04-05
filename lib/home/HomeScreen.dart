import 'package:flutter/material.dart';
import 'package:news/Model/category.dart';
import 'package:news/home/Draweer/Home_drawe.dart';
import 'package:news/home/category_details/category_details.dart';
import 'package:news/home/category_fragement/category_fregment.dart';

import '../search/NewsSearchDelegate.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            SelectedCategory == null ?
            "Home" : SelectedCategory!.title, style: Theme
            .of(context)
            .textTheme
            .headlineLarge),
        actions: [
          IconButton(
            onPressed: () {
              showSearch(
                context: context,
                delegate: NewsSearchDelegate(),
              );
            },
            icon: const Icon(Icons.search, size: 30),
          ),
        ],

      ),
      drawer: Drawer(
        child: HomeDrawer(onDrawerTtemClick: onDrawerItemClick,),
      ),
      body: SelectedCategory == null ?
      CategoryFregment(
        onCategoryItemCleck: onCategoryItemCleck,
      ) : CategoryDetails(category: SelectedCategory!,),
    );
  }

  Category? SelectedCategory;

  void onCategoryItemCleck(Category newSelectedCategory) {
    SelectedCategory = newSelectedCategory;
    setState(() {

    });
  }

  void onDrawerItemClick() {
    SelectedCategory = null;
    Navigator.pop(context);
    setState(() {

    });
  }

}