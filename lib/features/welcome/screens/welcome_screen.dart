import 'package:tappyfi/core/helpers/file_export.dart';
import 'package:tappyfi/core/utils/app_functions.dart';
import 'package:tappyfi/features/welcome/controllers/welcome_controller.dart';

class WelcomeScreen extends StatelessWidget {
  WelcomeScreen({super.key});
  var controller = Get.put(WelcomeController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Gap(context: context, height: 0.15),
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
            customDescription(context: context, title: AppStrings.desc_welcome, color: AppColor.primaryColor),
            Gap(context: context, height: 0.05),
            Obx(
              () => Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  FadeInSlide(
                    duration: 2,
                    direction: FadeSlideDirection.ltr,
                    child: GestureDetector(
                      onTap: () {
                        controller.id.value = "1";
                      },
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: context.height * 0.08,
                            backgroundImage:
                                const NetworkImage(AppImages.sisterImage),
                          ),
                          Gap(context: context, height: 0.01),
                          Row(
                            children: [
                              controller.id.value == "1"
                                  ? const Padding(
                                      padding: EdgeInsets.all(5),
                                      child: Icon(Icons.check_circle_outline,
                                          color: AppColor.primaryColor),
                                    )
                                  : const SizedBox.shrink(),
                              Text(
                                AppStrings.studient,
                                style: AppFonts.cairoStyle(
                                  fontWeight: FontWeight.bold,
                                  color: controller.id == "1"
                                      ? AppColor.primaryColor
                                      : null,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  FadeInSlide(
                    duration: 2,
                    direction: FadeSlideDirection.ltr,
                    child: GestureDetector(
                      onTap: () {
                        controller.id.value = "2";
                      },
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: context.height * 0.08,
                            backgroundImage:
                                const NetworkImage(AppImages.father),
                          ),
                          Gap(context: context, height: 0.01),
                          Row(
                            children: [
                              controller.id.value == "2"
                                  ? const Padding(
                                      padding: EdgeInsets.all(5),
                                      child: Icon(Icons.check_circle_outline,
                                          color: AppColor.primaryColor),
                                    )
                                  : const SizedBox.shrink(),
                              Text(
                                AppStrings.father,
                                style: AppFonts.cairoStyle(
                                    fontWeight: FontWeight.bold,
                                    color: controller.id == "2"
                                        ? AppColor.primaryColor
                                        : null),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Gap(context: context, height: 0.04),
            FadeInSlide(
              duration: 2,
              direction: FadeSlideDirection.btt,
              child: customButton(
                context: context,
                title: AppStrings.next,
                press: () {
                  if (controller.id.isEmpty) {
                    showToast(
                        title: AppStrings.type_user, status: Status.error);
                  }else{
                    Get.toNamed(AppRoute.rRegisterScreen);
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }


}
