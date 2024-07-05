import 'package:tappyfi/core/helpers/file_export.dart';
import 'package:tappyfi/core/utils/app_functions.dart';
import 'package:tappyfi/features/contact_info/controllers/contract_info_controller.dart';

class FirstTab extends StatelessWidget {
  FirstTab({super.key});

  @override
  Widget build(BuildContext context) {
    ContractInfoController controller = Get.find();
    return SingleChildScrollView(
      child: Form(
        key: controller.formKey,
        child: Column(
          children: [
            FadeInSlide(
              duration: 2,
              direction: FadeSlideDirection.ltr,
              child: customDescription(
                  context: context,
                  title: AppStrings.des1,
                  color: AppColor.orangeColor),
            ),
            Gap(context: context, height: 0.01),
            GestureDetector(
              onTap: () {
                selectDate(
                    context: context,
                    date: (date) {
                      controller.birthDateController.text = date.split(" ")[0];
                    });
              },
              child: customTextField(
                controller: controller.birthDateController,
                labelText: AppStrings.birth_date,
                isEnable: false,
                suffixIcon: const Icon(LineIcons.calendar),
                validator: (value) {
                  if (value!.isEmpty) {
                    return AppStrings.required_field;
                  }
                  return "";
                },
              ),
            ),
            GestureDetector(
              onTap: () {
                showDropdownMenu(
                  context: context,
                  values: [AppStrings.male, AppStrings.female],
                  result: (value) {
                    controller.genderController.text = value;
                  },
                );
              },
              child: customTextField(
                controller: controller.genderController,
                labelText: AppStrings.gender,
                isEnable: false,
                suffixIcon: const Icon(Icons.arrow_drop_down),
                validator: (value) {
                  if (value!.isEmpty) {
                    return AppStrings.required_field;
                  }
                  return "";
                },
              ),
            ),
            GestureDetector(
              onTap: () {
                showDropdownMenu(
                  context: context,
                  values: [
                    'سعودي',
                    'مصري',
                    'إماراتي',
                    'قطري',
                    'كويتي',
                    'عماني',
                    'بحريني',
                    'لبناني',
                    'سوري',
                    'أردني'
                  ],
                  result: (value) {
                    controller.nationalityController.text = value;
                  },
                );
              },
              child: customTextField(
                controller: controller.nationalityController,
                labelText: AppStrings.natinality,
                isEnable: false,
                suffixIcon: const Icon(Icons.arrow_drop_down),
                validator: (value) {
                  if (value!.isEmpty) {
                    return AppStrings.required_field;
                  }
                  return "";
                },
              ),
            ),
            GestureDetector(
              onTap: () {
                showDropdownMenu(
                  context: context,
                  values: ["نعم", "لا"],
                  result: (value) {
                    controller.difficultsController.text = value;
                  },
                );
              },
              child: customTextField(
                controller: controller.difficultsController,
                labelText: AppStrings.do_you_notice_any_difficulties,
                isEnable: false,
                suffixIcon: const Icon(Icons.arrow_drop_down),
                validator: (value) {
                  if (value!.isEmpty) {
                    return AppStrings.required_field;
                  }
                  return "";
                },
              ),
            ),
            customTextField(
              controller: TextEditingController(),
              hintText: AppStrings.any_notes,
              isEnable: true,
              maxLines: 3,
            ),
          ],
        ),
      ),
    );
  }
}
