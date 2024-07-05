import 'package:tappyfi/core/helpers/file_export.dart';
import 'package:tappyfi/core/widgets/custom_outline_border_botton.dart';
import 'package:tappyfi/features/register/controllers/register_controller.dart';

class RegisterScreen extends StatelessWidget {
  RegisterScreen({super.key});
  var controller = Get.put(RegisterController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Form(
            key: controller.formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Gap(context: context, height: 0.08),
                FadeInSlide(
                  duration: 2,
                  direction: FadeSlideDirection.ttb,
                  child: Text(
                    AppStrings.login,
                    style: AppFonts.cairoStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Gap(context: context, height: 0.04),
                FadeInSlide(
                  duration: 1.8,
                  direction: FadeSlideDirection.ltr,
                  child: customTextField(
                    controller: controller.firstNameController,
                    labelText: AppStrings.first_name,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return AppStrings.required_field;
                      }
                      return "";
                    },
                  ),
                ),
                FadeInSlide(
                  duration: 2,
                  direction: FadeSlideDirection.ltr,
                  child: customTextField(
                    controller: controller.familyNameController,
                    labelText: AppStrings.family_name,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return AppStrings.required_field;
                      }
                      return "";
                    },
                  ),
                ),
                FadeInSlide(
                  duration: 2.4,
                  direction: FadeSlideDirection.ltr,
                  child: customTextField(
                    controller: controller.phoneNumberController,
                    labelText: AppStrings.phone_number,
                    keyboardType: TextInputType.phone,
                    inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                    validator: (value) {
                      if (value!.isEmpty) {
                        return AppStrings.required_field;
                      } else if (value.isPhoneNumber == false) {
                        return AppStrings.invalid_phone_number;
                      }
                      return "";
                    },
                  ),
                ),
                FadeInSlide(
                  duration: 2.6,
                  direction: FadeSlideDirection.ltr,
                  child: customTextField(
                    controller: controller.emailController,
                    labelText: AppStrings.email,
                    keyboardType: TextInputType.emailAddress,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return AppStrings.required_field;
                      } else if (value.isEmail == false) {
                        return AppStrings.invalid_email;
                      }
                      return "";
                    },
                  ),
                ),
                FadeInSlide(
                  duration: 2.8,
                  direction: FadeSlideDirection.ltr,
                  child: customTextField(
                    controller: controller.passwordController,
                    labelText: AppStrings.password,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return AppStrings.required_field;
                      }
                      return "";
                    },
                  ),
                ),
                FadeInSlide(
                  duration: 3,
                  direction: FadeSlideDirection.ltr,
                  child: customTextField(
                    controller: controller.confirmPasswordController,
                    labelText: AppStrings.confirm_password,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return AppStrings.required_field;
                      }else if(value !=controller.passwordController.text){
                        return AppStrings.invalid_password;
                      }
                      return "";
                    },
                  ),
                ),
                Gap(context: context, height: 0.05),
                FadeInSlide(
                  duration: 2,
                  direction: FadeSlideDirection.btt,
                  child: customButton(
                    context: context,
                    title: AppStrings.new_user,
                    press: () {
                      Get.toNamed(AppRoute.rContractInfoScreen);
                      if (controller.formKey.currentState!.validate()) {}
                    },
                  ),
                ),
                Gap(context: context, height: 0.04),
                Row(
                  children: [
                    const Expanded(child: Divider()),
                    Text(
                      AppStrings.login_using,
                      style: AppFonts.cairoStyle(color: AppColor.greyColor),
                    ),
                    const Expanded(child: Divider()),
                  ],
                ),
                Gap(context: context, height: 0.02),
                custonSocialButton(
                    context: context,
                    icon: LineIcons.googleLogo,
                    title: "Google"),
                custonSocialButton(
                  context: context,
                  icon: LineIcons.apple,
                  title: "Apple",
                  iconColor: AppColor.blackColor,
                ),
                Gap(context: context, height: 0.02),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(AppStrings.do_you_have_account,style: AppFonts.cairoStyle(),),
                    Text(AppStrings.register,style: AppFonts.cairoStyle(color: AppColor.primaryColor),),
                  ],
                ),
                Gap(context: context, height: 0.06),

              ],
            ),
          ),
        ),
      ),
    );
  }

  
}
