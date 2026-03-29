import 'package:flutter/material.dart';
import 'package:news/Api/Api_Manager.dart';
import 'package:news/Model/Source_Respon.dart';
import 'package:news/utils/AppColor.dart';
import 'package:news/utils/AppStyle.dart';

class CategoryDetails extends StatefulWidget {
  const CategoryDetails({super.key});

  @override
  State<CategoryDetails> createState() => _CategoryDetailsState();
}

class _CategoryDetailsState extends State<CategoryDetails> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<SourceRespon>(
      future: ApiManager.getSources(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(
            child: CircularProgressIndicator(
              color: AppColors.grayColor,
            ),
          );
        }

        if (snapshot.hasError) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Something went wrong',
                  style: Theme
                      .of(context)
                      .textTheme
                      .labelMedium,
                ),
                const SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {
                    ApiManager.getSources();
                    setState(() {});
                  },
                  child: Text(
                    "Try Again",
                    style: Appstyle.medium12gray,
                  ),
                ),
              ],
            ),
          );
        }

        if (snapshot.data?.status != 'ok') {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  snapshot.data?.massage ?? "",
                  style: Theme
                      .of(context)
                      .textTheme
                      .labelMedium,
                ),
                const SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {
                    ApiManager.getSources();
                    setState(() {});
                  },
                  child: Text(
                    "Try Again",
                    style: Appstyle.medium12gray,
                  ),
                ),
              ],
            ),
          );
        }

        var sourcesList = snapshot.data?.sources ?? [];
        return ListView.builder(
          itemCount: sourcesList.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(
                  vertical: 8.0, horizontal: 16.0),
              child: Text(
                sourcesList[index].name ?? '',
                style: const TextStyle(fontSize: 16),
              ),
            );
          },
        );
      },
    );
  }
}