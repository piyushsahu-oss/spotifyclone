import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/theme/app_colors.dart';
import '../view_model/dashboard_view_model.dart';

class DashboardScreen extends StatelessWidget {
  DashboardScreen({super.key});

  final controller = Get.find<DashboardViewModel>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() => controller.screens[controller.selectedIndex.value]),

      bottomNavigationBar: Obx(
            () => BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              currentIndex: controller.selectedIndex.value,
          onTap: controller.changeTab,
          backgroundColor: AppColors.black,
          selectedItemColor: AppColors.white,
          unselectedItemColor: Colors.white.withOpacity(0.7),
          showUnselectedLabels: true,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
            BottomNavigationBarItem(icon: Icon(Icons.library_music), label: 'Library',),
            BottomNavigationBarItem(icon: Icon(Icons.wifi), label: 'Premium',),
          ],
        ),
      ),
    );
  }
}
