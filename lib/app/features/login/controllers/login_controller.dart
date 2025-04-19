import 'package:get/get.dart';
import 'package:mountrip/app/data/repositories/authentication_repository.dart';
import 'package:mountrip/app/utils/helpers/helper_functions.dart';

class LoginController extends GetxController {
  static LoginController get instance => Get.find();

  RxBool isLoadingGoogle = false.obs;
  RxBool isLoadingFacebook = false.obs;
  final AuthenticationRepository _auth = AuthenticationRepository.instance;

  void loginWithGoogle() {
    isLoadingGoogle.value = true;
    try {
      _auth
          .signInWithGoogle()
          .whenComplete(() => isLoadingGoogle.value = false);
    } catch (e) {
      THelperFunctions.showErrorSnackBar(e.toString());
      isLoadingGoogle.value = false;
    }
  }

  // login with facebook
  void loginWithFacebook() {
    isLoadingFacebook.value = true;
    try {
      _auth
          .signInWithFacebook()
          .whenComplete(() => isLoadingFacebook.value = false);
    } catch (e) {
      THelperFunctions.showErrorSnackBar(e.toString());
      isLoadingFacebook.value = false;
    }
  }
}
