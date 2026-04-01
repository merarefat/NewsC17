import 'package:flutter/material.dart';
import 'package:provider/provider.dart'; // تأكدي من الاستيراد ده
import 'package:news/Provider/ThemeProvider.dart';
import 'package:news/utils/AppColor.dart';
import '../../Model/category.dart';

class CategoryItem extends StatelessWidget {
  final Category category;
  final int index;

  const CategoryItem({super.key, required this.category, required this.index});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var provider = Provider.of<ThemeProvider>(context);
    bool isDarkMode = provider.currentTheme == ThemeMode.dark;

    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      height: 200,
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(24)),
      child: Stack(
        alignment: (index % 2 == 0)
            ? Alignment.bottomRight
            : Alignment.bottomLeft,
        children: [
          Positioned.fill(
            child: Image.asset(category.image, fit: BoxFit.cover),
          ),
          Positioned(
            top: 20,
            left: (index % 2 == 0) ? null : 20,
            right: (index % 2 == 0) ? 20 : null,
            child: Text(
              category.title,
              style: theme.textTheme.headlineMedium?.copyWith(
                color: isDarkMode ? Colors.black : Colors.white,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(16),
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(84),
              color: AppColors.grayColor.withOpacity(0.8),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              textDirection: (index % 2 == 0)
                  ? TextDirection.ltr
                  : TextDirection.rtl,
              children: [
                Text(
                  "View All",
                  style: theme.textTheme.labelLarge?.copyWith(
                    color: Colors.white,
                  ),
                ),
                const SizedBox(width: 8),
                CircleAvatar(
                  radius: 20,
                  backgroundColor: theme.scaffoldBackgroundColor,
                  child: Icon(
                    (index % 2 == 0)
                        ? Icons.arrow_forward_ios_outlined
                        : Icons.arrow_back_ios,
                    color: theme.splashColor,
                    size: 18,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
