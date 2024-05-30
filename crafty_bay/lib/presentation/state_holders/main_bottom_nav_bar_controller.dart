import 'package:crafty_bay/presentation/screens/email_verification_screen.dart';
import 'package:crafty_bay/presentation/state_holders/user_auth_controller.dart';
import 'package:get/get.dart';

class MainBottomNavBarController extends GetxController {
  int _selectedIndex = 0;

  int get selectedIndex => _selectedIndex;

  Future<void> changeIndex(int index) async {
    if (index == 2 || index == 3) {
      final isLoggedIn = await UserAuthController.checkLoggedInState();
      if (!isLoggedIn) {
        Get.to(() => const EmailVerificationScreen());
        return;
      }
    }
    _selectedIndex = index;
    update();
  }

  void backToHome() {
    changeIndex(0);
  }

  void selectCategory() {
    changeIndex(1);
  }
}
