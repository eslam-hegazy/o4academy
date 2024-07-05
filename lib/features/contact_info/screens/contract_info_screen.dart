import 'package:tappyfi/core/helpers/file_export.dart';
import 'package:tappyfi/core/widgets/custom_outline_border_botton.dart';
import 'package:tappyfi/features/contact_info/controllers/contract_info_controller.dart';

class ContractInfoScreen extends StatelessWidget {
  ContractInfoScreen({super.key});
  var controller = Get.put(ContractInfoController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Obx(
        () => controller.currentTabIndex.value == 7
            ? const SizedBox.shrink()
            : Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: context.width * 0.06,
                    vertical: context.height * 0.02),
                child: Row(
                  children: [
                    Expanded(
                      child: custonSocialButton(
                          press: () {
                            if (controller.currentTabIndex.value != 0) {
                              controller.currentTabIndex.value--;
                            }
                          },
                          context: context,
                          title: "<< ${AppStrings.past}",
                          textColor: AppColor.primaryColor),
                    ),
                    Gap(context: context, width: 0.02),
                    Expanded(
                      child: customButton(
                        context: context,
                        title: "${AppStrings.next} >>",
                        press: () {
                          if (controller.currentTabIndex.value <= 6) {
                            controller.currentTabIndex.value++;
                          }
                        },
                        borderRaduis: 10,
                      ),
                    ),
                  ],
                ),
              ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              Gap(context: context, height: 0.02),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(AppImages.logo, height: context.height * 0.08),
                  GestureDetector(
                    onTap: () {},
                    child: Text(
                      AppStrings.skip,
                      style: AppFonts.cairoStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              Gap(context: context, height: 0.02),
              SizedBox(
                width: double.infinity,
                height: 10,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Obx(
                      () => LinearProgressIndicator(
                        value: (controller.currentTabIndex.value + 3) * 0.1,
                        borderRadius: BorderRadius.circular(15),
                        color: AppColor.primaryColor,
                        backgroundColor: AppColor.greyColor,
                        minHeight: 10,
                      ),
                    ),
                    Obx(
                      () => Positioned(
                        right: context.width *
                            ((controller.currentTabIndex.value + 2.4) * 0.1),
                        child: const CircleAvatar(
                          backgroundColor: AppColor.whiteColor,
                          radius: 5,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Gap(context: context, height: 0.02),
              Obx(
                () => Expanded(
                    child: controller.tabs[controller.currentTabIndex.value]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
