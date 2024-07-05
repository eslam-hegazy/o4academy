  import 'package:tappyfi/core/helpers/file_export.dart';

Widget customRowTitle({required String title}) {
    return Row(
        children: [
          Text(title,style: AppFonts.cairoStyle(fontSize: 18,fontWeight: FontWeight.bold),),
          Text("*",style: AppFonts.cairoStyle(color: AppColor.redColor),)
        ],
      );
  }
