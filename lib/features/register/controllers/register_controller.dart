
import 'package:tappyfi/core/helpers/file_export.dart';

class RegisterController extends GetxController{
  var formKey=GlobalKey<FormState>();
  TextEditingController firstNameController=TextEditingController();
  TextEditingController familyNameController=TextEditingController();
  TextEditingController phoneNumberController=TextEditingController();
  TextEditingController emailController=TextEditingController();
  TextEditingController passwordController=TextEditingController();
  TextEditingController confirmPasswordController=TextEditingController();
}