import 'package:tappyfi/core/helpers/file_export.dart';

Widget customTextField({
  required TextEditingController controller,
  String? labelText,
  String? hintText,
  int? maxLines,
  List<TextInputFormatter>? inputFormatters,
  TextInputType keyboardType = TextInputType.text,
  Widget? suffixIcon,
  Widget? prefixIcon,
  bool isEnable = true,
  String Function(String?)? validator,
}) {
  var border = OutlineInputBorder(
      borderRadius: BorderRadius.circular(5),
      borderSide: const BorderSide(
        color: AppColor.greyColor,
      ));
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 8),
    child: TextFormField(
      enabled: isEnable,
      maxLines: maxLines,
      controller: controller,
      inputFormatters: inputFormatters,
      keyboardType: keyboardType,
      style: AppFonts.cairoStyle(),
      validator: validator,
      decoration: InputDecoration(
        label: labelText == null
            ? const SizedBox.shrink()
            : Row(
                children: [
                  Text(
                    labelText,
                    style: AppFonts.cairoStyle(color: AppColor.greyColor),
                  ),
                  Text(
                    " * ",
                    style: AppFonts.cairoStyle(color: AppColor.redColor),
                  )
                ],
              ),
        hintText: hintText,
        hintStyle: AppFonts.cairoStyle(color: AppColor.greyColor),
        suffixIcon: suffixIcon,
        prefixIcon: prefixIcon,
        border: border,
        enabledBorder: border,
        focusedBorder: border,
      ),
    ),
  );
}
