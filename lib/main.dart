import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spotify_clone/core/theme/app_theme.dart';
import 'core/routes/pages.dart';
import 'core/routes/routes.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        theme: AppTheme.theme,
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.welocome,
      getPages:AppPages.pages
    );
  }
}
