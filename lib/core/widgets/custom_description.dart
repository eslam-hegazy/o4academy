  import '../helpers/file_export.dart';

Widget customDescription({required BuildContext context,required String title,required Color color}) {
    return Row(
            children: [
              Container(
                height: context.height * 0.10,
                width: 8,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: color,
                ),
              ),
              Gap(context: context, width: 0.04),
              Expanded(
                  child: Text(
                title,
                textAlign: TextAlign.right,
                style: AppFonts.cairoStyle(letterSpacing: 2, height: 2),
              )),
            ],
          );
  }
