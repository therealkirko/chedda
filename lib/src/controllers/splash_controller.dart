import 'package:app/src/screens/auth/login/index.dart';
import 'package:app/src/screens/dashboard/index.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  var isLoading = false.obs;
  var message = ''.obs;
  var isLoaded = false.obs;

  @override
  void onInit() {
    preloadApp();
    super.onInit();
  }

  void preloadApp() {
    isLoading.value = true;
    Future.delayed(const Duration(seconds: 3), () {
      isLoading.value = false;
    }).catchError((error) {
      message.value = error.toString();
    }).whenComplete(() {
      isLoaded.value = true;
      Get.to(() => LoginScreen());
    });
  }
}