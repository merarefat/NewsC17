import 'package:flutter/material.dart';

class CategoryFregment extends StatelessWidget {
  const CategoryFregment({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: width * 0.04),
      child: Column(
        children: [
          Text(
            'Good Morning \nhere is Some News For You',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          Expanded(
            child: ListView.separated(
              itemBuilder: (context, index) {
                return Container();
              },
              separatorBuilder: (context, index) {
                return SizedBox(height: height * 0.02);
              },
              itemCount: 8,
            ),
          ),
        ],
      ),
    );
  }
}
