import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spotify_clone/core/theme/app_colors.dart';
import 'package:spotify_clone/widget/custom_spacing.dart';
import '../../core/routes/routes.dart';
import '../../core/theme/app_font_size.dart';
import '../../widget/custom_app_text.dart';
import '../../widget/custom_button.dart';

class LoginOptionsScreen extends StatelessWidget {
    const LoginOptionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.black,
      body: SingleChildScrollView(
        child: Column(
          spacing: 20,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            VerticalSpace(Get.height * 0.13),
            Icon(size: 80, Icons.ac_unit_rounded, color: AppColors.white),
            AppText(
              text: "Login in to Spotify",
              color: AppColors.white,
              fontSize: AppFont.fontSize24,
              fontWeight: AppFont.fontWeight700,
              textAlign: TextAlign.center,
            ),
            VerticalSpace(Get.height * 0.09),
            Padding(
              padding: const EdgeInsets.fromLTRB(40, 0, 40, 0),
              child: Container(
                width: Get.width,
                child: CustomButton(
                  borderRadius: 40,
                  title: "Continue with email",
                  textColor: AppColors.black,
                  backgroundColor: AppColors.green,
                  onTap: () {
                    Get.toNamed(AppRoutes.dashBoard);
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(40, 0, 40, 0),
              child: Container(
                width: Get.width,
                child: CustomButton(
                  borderRadius: 40,
                  backgroundColor: AppColors.transparent,
                  borderColor: AppColors.white,
                  title: "Continue with Phone number",
                  onTap: () {
                    Get.toNamed(AppRoutes.dashBoard);
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(40, 0, 40, 0),
              child: Container(
                width: Get.width,
                child: CustomButton(
                  borderRadius: 40,
                  backgroundColor: AppColors.transparent,
                  borderColor: AppColors.white,
                  title: "Continue with Google",
                  onTap: () {
                    Get.toNamed(AppRoutes.dashBoard);
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(40, 0, 40, 0),
              child: Container(
                width: Get.width,
                child: CustomButton(
                  borderRadius: 40,
                  backgroundColor: AppColors.transparent,
                  borderColor: AppColors.white,
                  title: "Continue with Facebook",
                  onTap: () {
                    Get.toNamed(AppRoutes.dashBoard);
                  },
                ),
              ),
            ),
            AppText(
              text: "Don't have an account?",
              color: AppColors.white,
              fontSize: AppFont.fontSize14,
              fontWeight: AppFont.fontWeight400,
            ),
            AppText(
              text: "Sign up",
              color: AppColors.white,
              fontSize: AppFont.fontSize14,
              fontWeight: AppFont.fontWeight400,
            ),
          ],
        ),
      ),
    );
  }
}
