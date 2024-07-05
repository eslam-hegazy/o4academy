import 'package:tappyfi/core/helpers/file_export.dart';
import 'package:tappyfi/core/widgets/custom_row_title.dart';
import 'package:tappyfi/features/contact_info/controllers/contract_info_controller.dart';

class SevenTab extends StatelessWidget {
  const SevenTab({super.key});

  @override
  Widget build(BuildContext context) {
    ContractInfoController controller = Get.find();
    return SingleChildScrollView(
      child: Column(
        children: [
          FadeInSlide(
              duration: 2,
              direction: FadeSlideDirection.ltr,
            child: customDescription(
              context: context,
              title: AppStrings.des7,
              color: AppColor.primaryColor,
            ),
          ),
          Gap(context: context, height: 0.01),
          customRowTitle(title: 'كم حصة اسبوعيا'),
          Gap(context: context, height: 0.01),
          totoalCost(context),
          Gap(context: context, height: 0.04),
          selectCredit(context),
          customTextField(
              controller: TextEditingController(),
              prefixIcon: const Icon(Icons.lock_outline),
              labelText: "رقم البطاقة"),
          customTextField(
              controller: TextEditingController(),
              labelText: "تاريخ انتهاء الصلاحية"),
          customTextField(
              controller: TextEditingController(), labelText: "رمز الحماية"),
          customTextField(
              controller: TextEditingController(),
              labelText: "الاسم على البطاقة"),
          Row(
            children: [
              Checkbox(
                value: true,
                activeColor: AppColor.primaryColor,
                onChanged: (value) {},
              ),
              Text("اوافق على",style: AppFonts.cairoStyle(),),
              Gap(context: context,width: 0.01),
              Text("الشروط والأحكام",style: AppFonts.cairoStyle(color: AppColor.primaryColor,fontWeight: FontWeight.bold),),
            ],
          ),
        ],
      ),
    );
  }

  Widget selectCredit(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      height: context.height * 0.07,
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border.all(color: AppColor.primaryColor, width: 2),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Row(
        children: [
          const CircleAvatar(
            backgroundColor: AppColor.primaryColor,
            radius: 10,
            child: CircleAvatar(
              radius: 4,
              backgroundColor: AppColor.whiteColor,
            ),
          ),
          Gap(context: context, width: 0.02),
          Text(
            "بطاقة إئتمان",
            style:
                AppFonts.cairoStyle(fontWeight: FontWeight.w600, fontSize: 18),
          ),
          const Spacer(),
          Image.asset(AppImages.credit, height: context.height * 0.06),
        ],
      ),
    );
  }

  Widget totoalCost(BuildContext context) {
    return Row(
      children: [
        Container(
          height: context.height * 0.08,
          width: 8,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            color: AppColor.primaryColor,
          ),
        ),
        Gap(context: context, width: 0.04),
        Expanded(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            height: context.height * 0.07,
            width: double.infinity,
            decoration: BoxDecoration(
              border: Border.all(color: AppColor.primaryColor, width: 2),
              borderRadius: BorderRadius.circular(5),
            ),
            child: Row(
              children: [
                Text(
                  "الاجمالي:",
                  style: AppFonts.cairoStyle(fontWeight: FontWeight.bold),
                ),
                Gap(context: context, width: 0.02),
                Text(
                  "56.5 درهم",
                  style: AppFonts.cairoStyle(),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
