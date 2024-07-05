import 'package:lottie/lottie.dart';
import 'package:tappyfi/core/helpers/file_export.dart';

class DoneTab extends StatelessWidget {
  const DoneTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FadeInSlide(
          duration: 2,
          direction: FadeSlideDirection.ttb,
          child: customDescription(
            context: context,
            title: AppStrings.des8,
            color: AppColor.orangeColor,
          ),
        ),
        Lottie.asset(AppImages.done),
        FadeInSlide(
          duration: 2,
          direction: FadeSlideDirection.ltr,
          child: Text(
            "تم الدفع بنجاح",
            style: AppFonts.cairoStyle(
                color: AppColor.primaryColor,
                fontWeight: FontWeight.bold,
                fontSize: 18),
          ),
        ),
        FadeInSlide(
          duration: 3,
          direction: FadeSlideDirection.ltr,
          child: Text(
            "شكرا لك على ثقتك فى المدرسة دوت كوم",
            style: AppFonts.cairoStyle(
              color: AppColor.primaryColor.withOpacity(0.5),
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const Spacer(),
        FadeInSlide(
          duration: 2,
          direction: FadeSlideDirection.btt,
          child: customButton(
            context: context,
            borderRaduis: 10,
            title: "توجة إلى جدولك الدراسى",
            press: () {},
          ),
        ),
        Gap(context: context, height: 0.04),
      ],
    );
  }
}
