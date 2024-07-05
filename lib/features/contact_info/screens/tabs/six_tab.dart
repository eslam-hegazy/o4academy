import 'package:tappyfi/core/helpers/file_export.dart';
import 'package:tappyfi/core/widgets/custom_row_title.dart';
import 'package:tappyfi/core/widgets/item_type_selection.dart';
import 'package:tappyfi/features/contact_info/controllers/contract_info_controller.dart';

class SixTab extends StatelessWidget {
  const SixTab({super.key});

  @override
  Widget build(BuildContext context) {
    ContractInfoController controller = Get.find();
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          FadeInSlide(
              duration: 2,
              direction: FadeSlideDirection.ttb,
            child: customDescription(
              context: context,
              title: AppStrings.des6,
              color: AppColor.orangeColor,
            ),
          ),
          Gap(context: context, height: 0.01),
          customRowTitle(title: 'كم حصة اسبوعيا'),
          Gap(context: context, height: 0.01),
          Obx(
            () => Wrap(
              children: controller.classesPerWeekData.map((e) {
                return GestureDetector(
                  onTap: () {
                    controller.selectClassesPerWeekData.value = e.title;
                  },
                  child: itemTypeSelection(
                      title: e.title,
                      selected:
                          controller.selectClassesPerWeekData.value == e.title),
                );
              }).toList(),
            ),
          ),
          Gap(context: context, height: 0.01),
          customRowTitle(title: 'كم عدد ساعات الحصة الواحدة'),
          Gap(context: context, height: 0.01),
          Obx(
            () => Wrap(
              children: controller.hoursData.map((e) {
                return GestureDetector(
                  onTap: () {
                    controller.selectHoursData.value = e.title;
                  },
                  child: itemTypeSelection(
                      title: e.title,
                      selected: controller.selectHoursData.value == e.title),
                );
              }).toList(),
            ),
          ),
          Gap(context: context, height: 0.01),
          customRowTitle(title: 'مدة الاشتراك'),
          Gap(context: context, height: 0.01),
          customItem(context),
          Gap(context: context, height: 0.02),
          customItem(context),
          Gap(context: context, height: 0.04),
        ],
      ),
    );
  }

  Material customItem(BuildContext context) {
    return Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(15),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10),
        width: context.width * 0.4,
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 25),
              decoration: BoxDecoration(
                color: AppColor.redColor.withOpacity(0.3),
              ),
              child: Text(
                "خصم 15 ٪",
                style: AppFonts.cairoStyle(color: AppColor.redColor),
              ),
            ),
            Text(
              "تلاتة فصول دراسية",
              style: AppFonts.cairoStyle(),
            ),
            Container(
              alignment: Alignment.topRight,
              child: Text(
                "اثنا عشر شهرا",
                style: AppFonts.cairoStyle(
                    color: AppColor.primaryColor, fontSize: 12),
              ),
            ),
            Row(
              children: [
                Container(
                  height: 20,
                  width: 4,
                  decoration: const BoxDecoration(
                    color: AppColor.primaryColor,
                  ),
                ),
                Gap(context: context, width: 0.02),
                Text(
                  "650 درهم",
                  style: AppFonts.cairoStyle(fontWeight: FontWeight.bold),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
