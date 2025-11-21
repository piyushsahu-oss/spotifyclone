

import 'package:flutter/material.dart';

import '../../core/theme/app_colors.dart';
import '../../widget/custom_app_text.dart';

class LibraryScreen extends StatelessWidget {
  const LibraryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child:
          AppText(text:'Library Screen', color: AppColors.white,)),
        ],
      ),
    );
  }
}
