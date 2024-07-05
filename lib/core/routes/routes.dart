import 'package:tappyfi/core/helpers/file_export.dart';
import 'package:tappyfi/features/contact_info/screens/contract_info_screen.dart';
import 'package:tappyfi/features/register/screens/register_screen.dart';
import 'package:tappyfi/features/welcome/screens/welcome_screen.dart';

List<GetPage> routes = [
  GetPage(
    name: AppRoute.rWelcomeScreen,
    page: () => WelcomeScreen(),
    transition: Transition.fade,
    transitionDuration:const Duration(milliseconds: 700),
  ),
  GetPage(
    name: AppRoute.rRegisterScreen,
    page: () => RegisterScreen(),
    transition: Transition.fade,
    transitionDuration:const Duration(milliseconds: 700),
  ),
   GetPage(
    name: AppRoute.rContractInfoScreen,
    page: () => ContractInfoScreen(),
    transition: Transition.fade,
    transitionDuration:const Duration(milliseconds: 700),
  ),
];