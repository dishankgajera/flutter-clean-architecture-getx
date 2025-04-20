// lib/src/features/user_profile/presentation/controllers/user_profile_controller.dart

import 'package:get/get.dart';
import '../../../domain/entities/user.dart';
import '../../../domain/usecases/get_user_profile.dart';

class UserProfileController extends GetxController {
  final GetUserProfile getUserProfile;

  UserProfileController(this.getUserProfile);

  // Observable state
  final Rxn<User> user = Rxn<User>();
  final RxBool isLoading = false.obs;

  // Fetch user data
  Future<void> fetchUser() async {
    try {
      isLoading.value = true;
      final result = await getUserProfile(); // call the use case
      user.value = result;
    } catch (e) {
      Get.snackbar('Error', 'Failed to load user');
    } finally {
      isLoading.value = false;
    }
  }
}
