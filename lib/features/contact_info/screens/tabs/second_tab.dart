import 'package:tappyfi/core/helpers/file_export.dart';
import 'package:tappyfi/core/widgets/custom_row_title.dart';
import 'package:tappyfi/core/widgets/item_type_selection.dart';
import 'package:tappyfi/features/contact_info/controllers/contract_info_controller.dart';

class SecondTab extends StatelessWidget {
  const SecondTab({super.key});

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
              title: AppStrings.des2,
              color: AppColor.orangeColor,
            ),
          ),
          Gap(context: context, height: 0.01),
          customRowTitle(title: "حدد المرحلة الدراسية"),
          Gap(context: context, height: 0.01),
          Obx(
            () => Wrap(
              children: controller.academicStageData.map((e) {
                return GestureDetector(
                  onTap: () {
                    controller.selectAcademicStageData.value = e.title;
                  },
                  child: itemTypeSelection(
                      title: e.title,
                      selected:
                          controller.selectAcademicStageData.value == e.title),
                );
              }).toList(),
            ),
          ),
          Gap(context: context, height: 0.01),
          customRowTitle(title: "حدد صفك الدراسي"),
          Gap(context: context, height: 0.01),
          Obx(
            () => Wrap(
              children: controller.levelStudyData.map((e) {
                return GestureDetector(
                  onTap: () {
                    controller.selectLevelStudyData.value = e.title;
                  },
                  child: itemTypeSelection(
                      title: e.title,
                      selected:
                          controller.selectLevelStudyData.value == e.title),
                );
              }).toList(),
            ),
          ),
          Gap(context: context, height: 0.01),
          customRowTitle(title: "حدد المنهج الدراسي"),
          Gap(context: context, height: 0.01),
          Obx(
            () => Wrap(
              children: controller.curriculumData.map((e) {
                return GestureDetector(
                  onTap: () {
                    controller.selectCurriculumData.value = e.title;
                  },
                  child: itemTypeSelection(
                      title: e.title,
                      selected:
                          controller.selectCurriculumData.value == e.title),
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }

  
}
