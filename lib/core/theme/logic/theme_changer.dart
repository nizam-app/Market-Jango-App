import 'package:get/get.dart';
class ThemeChanger extends GetxController {
  RxBool isDarkMode = true.obs;

  void toggleTheme() {
    isDarkMode.value = !isDarkMode.value;
    update();
  }
}
