import 'package:flutter/material.dart';
import 'package:news/Api/Api_Manager.dart';
import 'package:news/Model/Source_Respon.dart';
import 'package:news/home/widget/main_error_widget.dart';
import 'package:news/home/widget/main_loading_widget.dart';
import '../Source/source_Widget.dart';

class CategoryDetails extends StatefulWidget {
  CategoryDetails({super.key});

  @override
  State<CategoryDetails> createState() => _CategoryDetailsState();
}

class _CategoryDetailsState extends State<CategoryDetails> {
  late Future<SourceRespon> futureSources;

  @override
  void initState() {
    super.initState();
    futureSources = ApiManager.getSources();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<SourceRespon>(
      future: futureSources,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const MainLoadingWidget();
        }

        if (snapshot.hasError) {
          return Center(
            child: MainErrorWidget(
              errorMassage: "Something went wrong",
              onPresed: () {
                setState(() {
                  futureSources = ApiManager.getSources();
                });
              },
            ),
          );
        }

        if (snapshot.data?.status != 'ok') {
          return Center(
            child: MainErrorWidget(
              errorMassage: snapshot.data?.massage ?? "Unknown Error",
              onPresed: () {
                setState(() {
                  futureSources = ApiManager.getSources();
                });
              },
            ),
          );
        }
        var sourcesList = snapshot.data?.sources ?? [];

        return SourceWidget(sourcseList: sourcesList);
      },
    );
  }
}