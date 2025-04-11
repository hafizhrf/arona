import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:mercenary/helpers/dev_print.dart';
import 'package:mercenary/modules/homepage/services/homepage_service.dart';

class HomepageController extends GetxController {
  final HomepageService homepageService = Get.find();
  RxMap homepageData = {}.obs;

  @override
  void onInit() {
    // called immediately after the widget is allocated memory
    getHomepageData();
    super.onInit();
  }

  Future<void> getHomepageData() async {
    EasyLoading.show();
    try {
      Map? homepageDataRes = await homepageService.getHomepageData();
      if (homepageDataRes != null) {
        homepageData(homepageDataRes);
      }
      EasyLoading.dismiss();
    } catch (e) {
      devPrint('Error in homepage controller, $e');
      EasyLoading.dismiss();
    }
    update();
  }
}
