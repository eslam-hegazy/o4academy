import 'package:tappyfi/core/helpers/file_export.dart';
import 'package:tappyfi/core/widgets/custom_row_title.dart';
import 'package:tappyfi/core/widgets/item_type_selection.dart';
import 'package:tappyfi/features/contact_info/controllers/contract_info_controller.dart';

class FourTab extends StatelessWidget {
  const FourTab({super.key});
// 
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
              title: AppStrings.des4,
              color: AppColor.orangeColor,
            ),
          ),
          Gap(context: context, height: 0.01),
          customRowTitle(title: "ماعدد الطلاب المشتركين"),
          Gap(context: context, height: 0.01),
          Obx(
            () => Wrap(
              children: controller.studentsParticipatingData.map((e) {
                return GestureDetector(
                  onTap: () {
                    controller.selectStudentsParticipatingData.value = e.title;
                  },
                  child: itemTypeSelection(
                      title: e.title,
                      selected: controller.selectStudentsParticipatingData.value == e.title),
                );
              }).toList(),
            ),
          ),
          Gap(context: context, height: 0.01),
          customRowTitle(title:"حدد أهدافك الراسية"),
          Gap(context: context, height: 0.01),
          Obx(
            () => Wrap(
              children: controller.studentsDetermineGoalsData.map((e) {
                return GestureDetector(
                  onTap: () {
                    controller.selectDetermineGoalsData.value = e.title;
                  },
                  child: itemTypeSelection(
                      title: e.title,
                      selected: controller.selectDetermineGoalsData.value == e.title),
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
