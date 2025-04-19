import 'package:get/get.dart';
import 'package:mountrip/app/data/repositories/authentication_repository.dart';

class NavigationBarController extends GetxController {
  static NavigationBarController get instance => Get.find();

  @override
  void onReady() {
    pageId.value = Get.parameters['page'] == null
        ? 0
        : int.parse(
            Get.parameters['page']!,
          );
    changeTabIndex(pageId.value);
    super.onReady();
  }

  final RxBool isLoading = false.obs;
  RxInt tabIndex = 0.obs;
  RxInt pageId = 0.obs;
  final auth = AuthenticationRepository.instance;

  changeTabIndex(int index) {
    tabIndex.value = index;
  }
}
