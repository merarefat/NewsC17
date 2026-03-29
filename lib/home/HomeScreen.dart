import 'package:flutter/material.dart';
import 'package:news/home/category_details/category_details.dart';

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
        title: Text("Home",
        style: Theme.of(context).textTheme.headlineLarge,),
      ),
      body: CategoryDetails(),
    );
  }
}
