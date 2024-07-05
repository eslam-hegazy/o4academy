import 'package:tappyfi/core/helpers/file_export.dart';

Widget itemTypeSelection({required String title, bool selected = false,bool hasIcon=false}) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Material(
        elevation: 5,
        borderRadius: BorderRadius.circular(15),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          decoration: BoxDecoration(
            color: AppColor.whiteColor,
            borderRadius: BorderRadius.circular(15),
            border: Border.all(
                color: selected ? AppColor.primaryColor : AppColor.whiteColor,
                width: 2),
          ),
          child: Column(
            children: [
              hasIcon? const Icon(Icons.language,color: AppColor.primaryColor,size:50):const SizedBox.shrink(),
              Text(
                title,
                style: AppFonts.cairoStyle(fontSize: 18),
              ),
            ],
          ),
        ),
      ),
    );
  }
