import 'package:tappyfi/core/helpers/file_export.dart';

Widget Gap({required BuildContext context, double? height, double? width}) =>
    SizedBox(
      height: height == null ? 0 : context.height * height,
      width: width == null ? 0 : context.width * width,
    );
