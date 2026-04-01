import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:news/home/widget/main_loading_widget.dart';

import '../../Model/news_response.dart';
import '../../utils/AppStyle.dart';

class NewsItem extends StatelessWidget {
  final News news;

  const NewsItem({super.key, required this.news});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Container(
      margin: EdgeInsets.symmetric(
          horizontal: width * 0.02,
          vertical: height * 0.01
      ),
      padding: EdgeInsets.symmetric(
          horizontal: width * 0.02,
          vertical: height * 0.01
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Theme.of(context).splashColor, width: 2),
      ),
      child: Column(
        spacing: height * 0.02,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: CachedNetworkImage(
              imageUrl: news.urlToImage ?? ' ',
              placeholder: (context, url) => MainLoadingWidget(),
              errorWidget: (context, url, error) => Icon(Icons.error),
            ),
          ),
          Text(news.title ?? '',
            style: Theme
                .of(context)
                .textTheme
                .labelLarge,),
          Row(
            children: [
              Expanded(
                child: Text('By : ${news.author}',
                  style: AppStyle.medium12gray,),
              ),
              Text(news.publishedAt ?? '',
                style: AppStyle.medium12gray,),
            ],
          )
        ],
      ),
    );
  }
}
