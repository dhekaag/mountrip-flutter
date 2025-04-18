import 'package:get/get.dart';
import 'package:mountrip/app/data/repositories/authentication_repository.dart';
import 'package:mountrip/app/utils/helpers/helper_functions.dart';

class HomeController extends GetxController {
  static HomeController get instance => Get.find();

  RxBool isLoading = false.obs;

  // void fetchData() {
  //   isLoading.value = true;
  //   // Simulate a network request or data fetching
  //   Future.delayed(Duration(seconds: 2), () {
  //     isLoading.value = false;
  //     // Update your data here
  //   });
  // }

  Future<void> logout() async {
    isLoading.toggle();
    try {
      await AuthenticationRepository.instance
          .signOut()
          .whenComplete(() => isLoading.toggle());
      // Call API to sign out
    } catch (e) {
      THelperFunctions.showErrorSnackBar("Sign out failed. Please try again.");
      // Show error message
      isLoading.toggle();
    }
  }
}
