import 'package:flutter/material.dart';
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
    var provider = Provider.of<ThemeProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text("Home", style: Theme
            .of(context)
            .textTheme
            .headlineLarge),
        actions: [
          IconButton(
            onPressed: () {
              provider.toggleTheme(
                  provider.currentTheme == ThemeMode.light
                      ? ThemeMode.dark
                      : ThemeMode.light
              );
            },
            icon: Icon(provider.currentTheme == ThemeMode.light
                ? Icons.dark_mode
                : Icons.light_mode),
          )
        ],
      ),
      drawer: Drawer(
        child: Homescreen(),
      ),
      body: const CategoryFregment(),
    );
  }
}