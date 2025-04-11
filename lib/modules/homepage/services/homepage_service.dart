import 'dart:async';
import 'package:mercenary/helpers/dev_print.dart';

class HomepageService {
  Future<Map?> getHomepageData({String? query}) async {
    try {
      await Future.delayed(const Duration(seconds: 2));

      return {'status': 'success', 'data': 'dummy data'};
    } catch (e) {
      devPrint(e);
      return null;
    }
  }
}
