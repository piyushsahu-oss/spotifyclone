import 'package:get/get.dart';
import 'package:spotify_clone/core/routes/routes.dart';
import 'package:spotify_clone/dashboard/binding/dashboard_binding.dart';

import '../../auth/view/login_options_view.dart';
import '../../auth/view/welcome_view.dart';
import '../../dashboard/binding/playlist_binding.dart';
import '../../dashboard/view/dashboard_view.dart';
import '../../home/view/playlist_view.dart';

class AppPages {
  static final pages = [
    GetPage(name: AppRoutes.welocome, page: () => WelcomeScreen()),
    GetPage(name: AppRoutes.login, page: () => LoginOptionsScreen()),
    GetPage(name: AppRoutes.dashBoard,
        page: () => DashboardScreen(),
    binding: DashboardBinding(),
    ),

    GetPage(
      name: AppRoutes.playlist,
      page: () => PlaylistScreen(),
      binding: PlaylistBinding(),
    ),

  ];
}
