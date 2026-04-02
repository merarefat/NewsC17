import 'package:flutter/material.dart';
import 'package:news/utils/AppColor.dart';
import 'package:provider/provider.dart';

import '../../Provider/ThemeProvider.dart';
class HomeDrawer extends StatelessWidget {
  final VoidCallback onDrawerTtemClick;

  HomeDrawer({super.key, required this.onDrawerTtemClick});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<SettingsProvider>(context);

    return Drawer(
      backgroundColor: AppColors.blackColor,
      child: Column(
        children: [
          // Header
          Container(
            height: 150,
            width: double.infinity,
            color: AppColors.whiteLight,
            alignment: Alignment.center,
            child: const Text(
              'News App',
              style: TextStyle(fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: AppColors.blackColor),
            ),
          ),

          const SizedBox(height: 20),

          // Go To Home
          ListTile(
            leading: const Icon(Icons.home_outlined, color: Colors.white),
            title: const Text('Go To Home', style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold)),
            onTap: () {
              onDrawerTtemClick();
            },
          ),

          const Divider(color: Colors.grey, indent: 20, endIndent: 20),

          // Theme Section
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Row(
                  children: [
                    Icon(Icons.palette_outlined, color: Colors.white),
                    SizedBox(width: 10),
                    Text('Theme', style: TextStyle(color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold)),
                  ],
                ),
                const SizedBox(height: 10),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton<ThemeMode>(
                      value: provider.currentTheme,
                      dropdownColor: Colors.black,
                      iconEnabledColor: Colors.white,
                      isExpanded: true,
                      items: const [
                        DropdownMenuItem(value: ThemeMode.light,
                            child: Text('Light', style: TextStyle(
                                color: Colors.white))),
                        DropdownMenuItem(value: ThemeMode.dark,
                            child: Text('Dark', style: TextStyle(
                                color: Colors.white))),
                      ],
                      onChanged: (value) {
                        if (value != null) provider.changeTheme(value);
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),

          const Divider(color: Colors.grey, indent: 20, endIndent: 20),

          // Language Section
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Row(
                  children: [
                    Icon(Icons.language, color: Colors.white),
                    SizedBox(width: 10),
                    Text('Language', style: TextStyle(color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold)),
                  ],
                ),
                const SizedBox(height: 10),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton<String>(
                      value: provider.currentLanguage,
                      dropdownColor: Colors.black,
                      iconEnabledColor: Colors.white,
                      isExpanded: true,
                      items: const [
                        DropdownMenuItem(value: 'en',
                            child: Text('English', style: TextStyle(
                                color: Colors.white))),
                        DropdownMenuItem(value: 'ar',
                            child: Text('العربية', style: TextStyle(
                                color: Colors.white))),
                      ],
                      onChanged: (value) {
                        if (value != null) provider.changeLanguage(value);
                      },
                    ),
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