

import 'package:flutter/material.dart';

import '../../core/theme/app_colors.dart';
import '../../widget/custom_app_text.dart';

class PermiumScreen extends StatelessWidget {
  const PermiumScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child:
          AppText(text:'Permium Screen', color: AppColors.white,)),
        ],
      ),
    );
  }
}
