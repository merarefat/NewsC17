import 'package:flutter/material.dart';
import 'package:news/Api/Api_Manager.dart';
import 'package:news/Model/Source_Respon.dart';
import 'package:news/Model/news_response.dart';
import 'package:news/home/News/News_Item.dart';
import 'package:news/home/widget/main_error_widget.dart';
import 'package:news/home/widget/main_loading_widget.dart';

class NewsWidget extends StatefulWidget {
  final Source source;

  const NewsWidget({super.key, required this.source});

  @override
  State<NewsWidget> createState() => _NewsWidgetState();
}

class _NewsWidgetState extends State<NewsWidget> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<NewsResponse>(
      future: ApiManager.getNewsBySourcesId(widget.source.id ?? ''),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return MainLoadingWidget();
        } else if (snapshot.hasError) {
          return MainErrorWidget(
            errorMassage: 'Something Went Wrong',
            onPresed: () {
              ApiManager.getNewsBySourcesId(widget.source.id ?? '');
              setState(() {});
            },
          );
        }
        if (snapshot.data?.status == 'error') {
          MainLoadingWidget();
        } else if (snapshot.hasError) {
          return MainErrorWidget(
            errorMassage: snapshot.data!.massage!,
            onPresed: () {
              ApiManager.getNewsBySourcesId(widget.source.id ?? '');
              setState(() {});
            },
          );
        }
        var newsList = snapshot.data?.articles ?? [];
        return ListView.builder(
          itemBuilder: (context, index) {
            return NewsItem(news: newsList[index]);
          },
          itemCount: newsList.length,
        );
      },
    );
  }
}
