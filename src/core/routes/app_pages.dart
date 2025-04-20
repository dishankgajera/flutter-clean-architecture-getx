// core/routes/app_pages.dart
import 'package:get/get.dart';

import '../../features/user_profile/presentation/pages/user_profile_page.dart';
import 'app_routes.dart';

final List<GetPage> appPages = [
  // GetPage(
  //   name: AppRoutes.login,
  //   page: () => const LoginPage(),
  // ),
  // GetPage(
  //   name: AppRoutes.home,
  //   page: () => const HomePage(),
  //   // binding: AppBinding(),
  // ),
  GetPage(
    name: AppRoutes.profile,
    page: () => const UserProfilePage(),
  ),
];
