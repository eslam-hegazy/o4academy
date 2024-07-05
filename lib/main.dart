import 'package:tappyfi/core/helpers/file_export.dart';
import 'package:tappyfi/core/language/language_controller.dart';
import 'package:tappyfi/core/language/locale.dart';
import 'package:tappyfi/core/routes/routes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await CacheHelper.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({
    Key? key,
  }) : super(key: key);
  var localeController = Get.put(LocaleController());
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      translations: MyLocal(),
      locale: localeController.initialLang,
      initialRoute: AppRoute.rWelcomeScreen,
      getPages: routes,
      navigatorKey: Get.key,
      defaultTransition: Transition.topLevel,
      
    );
  }
}
