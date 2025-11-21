import 'package:flutter/material.dart';
import 'package:spotify_clone/widget/custom_spacing.dart';

import '../core/theme/app_colors.dart';
import 'custom_app_text.dart';

class CustomButton extends StatelessWidget {
  final Icon? icon;
  final String title;
  final double? textSize;
  final VoidCallback onTap;
  final Color? textColor;
  final Color? backgroundColor;
  final double borderRadius;
  final Color? borderColor;
  final double? paddingHorizontal;
  final double? paddingVertical;

  const CustomButton({
    super.key,
    this.icon,
    this.textColor,
    this.textSize,
    this.backgroundColor,
    this.borderRadius = 12,
    this.borderColor,
    this.paddingHorizontal,
    this.paddingVertical,
    required this.title,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.resolveWith<Color?>(
              (states) {
            if (states.contains(MaterialState.disabled)) {
              return backgroundColor?.withOpacity(0.5) ?? Colors.grey.withOpacity(0.5);
            }
            return backgroundColor ?? AppColors.green;
          },
        ),
        foregroundColor: MaterialStateProperty.all(textColor ?? Colors.white),
        padding: MaterialStateProperty.all(
          EdgeInsets.symmetric(
            horizontal: paddingHorizontal ?? 16,
            vertical: paddingVertical ?? 10,
          ),
        ),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
            side: BorderSide(
              color: borderColor ?? Colors.transparent,
            ),
          ),
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (icon != null) ...[
            icon!,
            const HorizontalSpace(8),
          ],
          AppText(
            text: title,
            color: textColor ?? Colors.white,
            fontSize: textSize ?? 14.0,
            fontWeight: FontWeight.w500,
          ),
        ],
      ),
    );
  }
}
