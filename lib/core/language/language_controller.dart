import 'package:tappyfi/core/helpers/file_export.dart';

class LocaleController extends GetxController {
  Locale? initialLang = CacheHelper.getDataFromSharedPreference(
              key: AppConstants.LANG_KEY) ==
          null
      ? const Locale('ar')
      : Locale(
          CacheHelper.getDataFromSharedPreference(key: AppConstants.LANG_KEY),
        );
  void changeLang(String codeLang) {
    Locale locale = Locale(codeLang);
    CacheHelper.saveDataSharedPreference(
        key: AppConstants.LANG_KEY, value: codeLang);
    Get.updateLocale(locale);
  }

  String getCurrentLang({required String valueAr, required String valueEn}) {
    if (initialLang!.languageCode == 'ar') {
      return valueAr;
    } else {
      return valueEn;
    }
  }
}
