import 'package:tappyfi/core/helpers/file_export.dart';
import 'package:tappyfi/core/widgets/custom_row_title.dart';
import 'package:tappyfi/core/widgets/item_type_selection.dart';
import 'package:tappyfi/features/contact_info/controllers/contract_info_controller.dart';

class ThirdTab extends StatelessWidget {
  const ThirdTab({super.key});

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
              title: AppStrings.des2,
              color: AppColor.primaryColor,
            ),
          ),
          Gap(context: context, height: 0.01),
          customRowTitle(title: "حدد المواد التى ترغب فى دراستها"),
          Gap(context: context, height: 0.01),
          Obx(
            () => Wrap(
              children: controller.subjectsData.map((e) {
                return GestureDetector(
                  onTap: () {
                    controller.selectSubjectsData.value = e.title;
                  },
                  child: itemTypeSelection(
                    hasIcon: true,
                      title: e.title,
                      selected:
                          controller.selectSubjectsData.value == e.title),
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
