import 'package:flutter/material.dart';
import 'package:get/get.dart';

class InfoController extends GetxController {
  PageController pageController = PageController();
  var onLastPage = false.obs;

  // Sayfa ilerleme
  void goToNextInfo() {
    if (!onLastPage.value) {
      pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    } else {
      Get.back();
      resetController(); // HomeScreen'e geçiş yaparken sıfırlama işlemi
    }
  }

  // Son sayfa mı?
  void lastPage(int index) {
    onLastPage.value = (index == 3);
  }

  // Controller sıfırlama
  void resetController() {
    pageController.dispose();
    pageController = PageController();
    onLastPage.value = false;
  }

  // appbar-leading go-back
  void goBack() {
    Get.back();
    resetController();
  }
}
