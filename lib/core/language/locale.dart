import 'package:get/get.dart';
import 'package:tappyfi/core/language/ar.dart';
import 'package:tappyfi/core/language/en.dart';

class MyLocal implements Translations {
  @override
  Map<String, Map<String, String>> get keys => {
    'ar':AR,
    'en':EN,
  };
}
