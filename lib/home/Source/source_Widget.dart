import 'package:flutter/material.dart';
import 'package:news/home/News/News_Widget.dart';
import 'package:news/home/Source/source_Tap.dart';
import 'package:news/utils/AppColor.dart';
import '../../../Model/Source_Respon.dart';

class SourceWidget extends StatefulWidget {
  final List<Source> sourcseList;

  SourceWidget({super.key, required this.sourcseList});

  @override
  State<SourceWidget> createState() => _SourceWidgetState();
}

class _SourceWidgetState extends State<SourceWidget> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: widget.sourcseList.length,
      child: Column(
        children: [
          TabBar(
            isScrollable: true,
            onTap: (index) {
              selectedIndex = index;
              setState(() {});
            },
            dividerColor: AppColors.transparentColor,
            tabAlignment: TabAlignment.start,
            indicatorColor: Theme.of(context).splashColor,
            tabs: widget.sourcseList.map((sources) {
              return SourceTap(
                sources: sources,
                isSelected:
                    selectedIndex == widget.sourcseList.indexOf(sources),
              );
            }).toList(),
          ),
          Expanded(
            child: NewsWidget(source: widget.sourcseList[selectedIndex]),
          ),
        ],
      ),
    );
  }
}
