import 'package:get/get.dart';

import '../../../data/repositories/user/user_repository.dart';
import '../../../utils/popups/loaders.dart';
import '../models/user_model.dart';

class UserController extends GetxController {
  static UserController get instance => Get.find();

  // Observable Variables
  RxBool loading = false.obs;
  Rx<UserModel> user = UserModel.empty().obs;

  final userRepository = Get.put(UserRepository());

  @override
  onInit() {
    fetchUserDetails();
    super.onInit();
  }

  /// Fetches user details from the repository
  Future<UserModel> fetchUserDetails() async {
    try {
      loading.value = true;
      final user = await userRepository.fetchAdminDetails();
      this.user.value = user;
      loading.value = false;

      return user;
    } catch (e) {
      loading.value = false;
      TLoaders.errorSnackBar(
          title: 'Something went wrong', message: e.toString());
      return UserModel.empty();
    }
  }
}
