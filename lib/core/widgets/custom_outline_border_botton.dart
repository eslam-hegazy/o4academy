import 'package:tappyfi/core/helpers/file_export.dart';

Widget custonSocialButton({
  required BuildContext context,
  Color?textColor,
  IconData? icon,
  required String title,
  VoidCallback? press,
  Color iconColor = AppColor.redColor,
}) {
  return GestureDetector(
    onTap: press,
    child: Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      height: context.height * 0.06,
      width: double.infinity,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: AppColor.primaryColor,
          width: 1,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            title,
            style: AppFonts.cairoStyle(fontWeight: FontWeight.bold, fontSize: 18,color:textColor ),
          ),
          icon == null ? const SizedBox.shrink() : Icon(icon, color: iconColor),
        ],
      ),
    ),
  );
}
