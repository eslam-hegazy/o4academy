import 'package:tappyfi/core/helpers/file_export.dart';

Widget customButton(
    {required BuildContext context,
    required String title,
    required VoidCallback press,
    double borderRaduis = 50}) {
  return GestureDetector(
    onTap: press,
    child: Container(
      height: context.height * 0.06,
      width: double.infinity,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(borderRaduis),
        color: AppColor.primaryColor,
      ),
      child: Text(
        title,
        style: AppFonts.cairoStyle(
          fontSize: 18,
          color: AppColor.whiteColor,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
  );
}
