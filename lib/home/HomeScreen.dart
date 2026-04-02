import 'package:flutter/material.dart';
import 'package:news/home/Draweer/Home_drawe.dart';
import 'package:provider/provider.dart';
import 'package:news/Provider/ThemeProvider.dart';
import 'package:news/home/category_fragement/category_fregment.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<SettingsProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text("Home", style: Theme
            .of(context)
            .textTheme
            .headlineLarge),

      ),
      drawer: Drawer(
        child: HomeDrawer(),
      ),
      body: const CategoryFregment(),
    );
  }
}