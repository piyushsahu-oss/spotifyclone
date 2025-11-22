import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../core/theme/app_colors.dart';
import '../../widget/custom_button.dart';

class CustomLoginButton extends StatelessWidget {
  final VoidCallback onTap;
  final Color? borderColor;
  final String title;
  final Color? backgroundColor;
  const CustomLoginButton({
    required this.onTap,
    this.borderColor,
    this.backgroundColor,
    required this.title ,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:const EdgeInsets.symmetric(horizontal: 40),
      child: Container(
        width: Get.width,
        child: CustomButton(
          borderRadius: 40,
          backgroundColor: backgroundColor ?? AppColors.transparent,
          borderColor: borderColor ?? AppColors.white,
          title: title,
          onTap: onTap,
        ),
      ),
    );
  }
}
