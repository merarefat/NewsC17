import 'package:news/generated/assets.dart';

class Category {
   String id;
   String title;
   String image;

   Category({required this.id, required this.title, required this.image});

   static List<Category> getCategoriesList(bool isDarkMode) {
      return [
         Category(
             id: "general",
             title: 'General',
             image: isDarkMode ? AppAssent.general : AppAssent.general_dark),
         Category(
             id: "business",
             title: 'Business',
             image: isDarkMode ? AppAssent.busniess : AppAssent.busniess_dark),
         Category(
             id: "sports",
             title: 'Sports',
             image: isDarkMode ? AppAssent.sport : AppAssent.sport_dark),
         Category(
             id: "health",
             title: 'Health',
             image: isDarkMode ? AppAssent.helth : AppAssent.helth_dark),
         Category(
             id: "science",
             title: 'Science',
             image: isDarkMode ? AppAssent.science : AppAssent.science_dark),
         Category(
             id: "technology",
             title: 'Technology',
             image: isDarkMode ? AppAssent.technology : AppAssent
                 .technology_dark),
         Category(
             id: "entertainment",
             title: 'Entertainment',
             image: isDarkMode ? AppAssent.entertainment : AppAssent
                 .entertainment_dark)
      ];
   }
}