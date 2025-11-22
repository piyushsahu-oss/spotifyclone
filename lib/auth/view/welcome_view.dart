import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spotify_clone/core/theme/app_colors.dart';
import 'package:spotify_clone/widget/custom_spacing.dart';

import '../../core/routes/routes.dart';
import '../../core/theme/app_font_size.dart';
import '../../widget/custom_app_text.dart';
import '../../widget/custom_button.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.black,
        body: Column(
          spacing: 20,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            VerticalSpace(Get.height * 0.1),
            Icon(size: 80, Icons.ac_unit_rounded, color: AppColors.white),
            AppText(
              text: "Millions of Songs. \n Free On Spotify",
              color: AppColors.white,
              fontSize: AppFont.fontSize24,
              fontWeight: AppFont.fontWeight700,
              textAlign: TextAlign.center,
            ),
            VerticalSpace(Get.height * 0.15),
           Padding(
                padding:const EdgeInsets.symmetric(horizontal: 40),
                child: Container(
                  width: Get.width,
                  child: CustomButton(
                    borderRadius: 40,
                    title: "Sign Up for Free",
                    textColor: AppColors.black,
                    backgroundColor: AppColors.green,
                   onTap:()=> Get.toNamed(AppRoutes.login),
                  ),
                ),
            ),
            Padding(
              padding:const EdgeInsets.symmetric(horizontal: 40),
              child: Container(
                width: Get.width,
                child: CustomButton(
                  borderRadius: 40,
                  backgroundColor: AppColors.transparent,
                  borderColor: AppColors.white,
                  title: "Log in",
                  onTap:()=> Get.toNamed(AppRoutes.login),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
