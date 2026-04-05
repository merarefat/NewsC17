import 'package:flutter/material.dart';

import '../../Api/Api_Manager.dart';
import '../../utils/AppStyle.dart' show Appstyle, AppStyle;

class MainErrorWidget extends StatelessWidget {
  final String errorMassage;
  final VoidCallback onPresed;

  MainErrorWidget({
    super.key,
    required this.errorMassage,
    required this.onPresed,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(errorMassage, style: Theme.of(context).textTheme.labelMedium),
        const SizedBox(height: 10),
        ElevatedButton(
          onPressed: onPresed,
          child: Text("Try Again", style: AppStyle.medium12gray),
        ),
      ],
    );
  }
}
