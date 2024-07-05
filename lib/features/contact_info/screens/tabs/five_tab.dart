import 'package:tappyfi/core/helpers/file_export.dart';
import 'package:tappyfi/core/widgets/custom_row_title.dart';
import 'package:tappyfi/core/widgets/item_type_selection.dart';
import 'package:tappyfi/features/contact_info/controllers/contract_info_controller.dart';

class FiveTab extends StatelessWidget {
  const FiveTab({super.key});

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
              direction: FadeSlideDirection.ltr,
            child: customDescription(
              context: context,
              title: AppStrings.des5,
              color: AppColor.primaryColor,
            ),
          ),
          Gap(context: context, height: 0.01),
          customRowTitle(title: 'الايام المناسبة لك'),
          Gap(context: context, height: 0.01),
          Obx(
            () => Wrap(
              children: controller.daysData.map((e) {
                return GestureDetector(
                  onTap: () {
                    controller.selectDaysData.value = e.title;
                  },
                  child: itemTypeSelection(
                      title: e.title,
                      selected: controller.selectDaysData
                      .value == e.title),
                );
              }).toList(),
            ),
          ),
          Gap(context: context, height: 0.01),
          customRowTitle(title:'مالفترة الزمنية المناسبة لك'),
          Gap(context: context, height: 0.01),
          Obx(
            () => Wrap(
              children: controller.timePeriodData.map((e) {
                return GestureDetector(
                  onTap: () {
                    controller.selectTimePeriodData.value = e.title;
                  },
                  child: itemTypeSelection(
                      title: e.title,
                      selected: controller.selectTimePeriodData
                      .value == e.title),
                );
              }).toList(),
            ),
          ),
          Gap(context: context, height: 0.01),
          customRowTitle(title:'اختر التوقيت المناسب لك'),
          Gap(context: context, height: 0.01),
          Obx(
            () => Wrap(
              children: controller.timeingRightData.map((e) {
                return GestureDetector(
                  onTap: () {
                    controller.selectTimeingRightData.value = e.title;
                  },
                  child: itemTypeSelection(
                      title: e.title,
                      selected: controller.selectTimeingRightData
                      .value == e.title),
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}