import 'package:get/get.dart';

import '../../../data/repositories/user/user_repository.dart';
import '../../../utils/popups/loaders.dart';
import '../models/user_model.dart';

class UserController extends GetxController {
  static UserController get instance => Get.find();

  // Oberservable Variables
  RxBool loading = false.obs;
  Rx<UserModel> user = UserModel.empty().obs;

  final userRepository = Get.put(UserRepository());

  /// Fetches user details from the repository
  Future<UserModel> fetchUserDetails() async {
    try {
      final user = await userRepository.fetchAdminDetails();
      return user;
    } catch (e) {
      TLoaders.errorSnackBar(
          title: 'Something went wrong', message: e.toString());
      return UserModel.empty();
    }
  }
}
