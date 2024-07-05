import 'package:tappyfi/core/data/models/item_model.dart';
import 'package:tappyfi/core/helpers/file_export.dart';
import 'package:tappyfi/features/contact_info/screens/tabs/done_tab.dart';
import 'package:tappyfi/features/contact_info/screens/tabs/first_tab.dart';
import 'package:tappyfi/features/contact_info/screens/tabs/five_tab.dart';
import 'package:tappyfi/features/contact_info/screens/tabs/four_tab.dart';
import 'package:tappyfi/features/contact_info/screens/tabs/second_tab.dart';
import 'package:tappyfi/features/contact_info/screens/tabs/seven_tab.dart';
import 'package:tappyfi/features/contact_info/screens/tabs/six_tab.dart';
import 'package:tappyfi/features/contact_info/screens/tabs/third_tab.dart';

class ContractInfoController extends GetxController {
  TextEditingController birthDateController = TextEditingController();
  TextEditingController genderController = TextEditingController();
  TextEditingController nationalityController = TextEditingController();
  TextEditingController difficultsController = TextEditingController();
  TextEditingController noteController = TextEditingController();
  @override
  void dispose() {
    birthDateController.dispose();
    genderController.dispose();
    nationalityController.dispose();
    difficultsController.dispose();
    noteController.dispose();
    super.dispose();
  }
  var formKey = GlobalKey<FormState>();
  var currentTabIndex = 0.obs;
  var tabs = <Widget>[
    FirstTab(),
    SecondTab(),
    ThirdTab(),
    FourTab(),
    FiveTab(),
    SixTab(),
    SevenTab(),
    DoneTab(),
  ].obs;

  // select acadmy
  var selectAcademicStageData = "".obs;
  var academicStageData = <ItemModel>[
    ItemModel(id: 1, title: 'رياض الاطفال'),
    ItemModel(id: 2, title: 'التعليم الابتدائي'),
    ItemModel(id: 3, title: 'التعليم المتوسط'),
    ItemModel(id: 4, title: 'التعليم الثانوي'),
  ];
  // select level study
  var selectLevelStudyData = "".obs;
  var levelStudyData = <ItemModel>[
    ItemModel(id: 1, title: 'الصف الخامس'),
    ItemModel(id: 2, title: 'الصف السادس'),
    ItemModel(id: 3, title: 'الصف السابع'),
    ItemModel(id: 4, title: 'الصف الثامن'),
  ];
  // Select the curriculum
  var selectCurriculumData = "".obs;
  var curriculumData = <ItemModel>[
    ItemModel(id: 1, title: 'المنهج البريطاني'),
    ItemModel(id: 2, title: 'المنهج الامريكى'),
    ItemModel(id: 3, title: 'أخرى'),
    ItemModel(id: 4, title: 'المنهج الوزارى'),
  ];
  // Select the subjects
  var selectSubjectsData = "".obs;
  var subjectsData = <ItemModel>[
    ItemModel(id: 1, title: 'الرياضيات'),
    ItemModel(id: 2, title: 'اللغة العربية'),
    ItemModel(id: 3, title: 'اللغة الالمانية'),
    ItemModel(id: 4, title: 'اللغة الانجليزية'),
    ItemModel(id: 5, title: 'علوم الحاسوب'),
    ItemModel(id: 6, title: 'الكيمياء'),
    ItemModel(id: 7, title: 'الاحياء'),
    ItemModel(id: 8, title: 'الفيزياء'),
    ItemModel(id: 9, title: 'اللغة الفرنسية'),
  ];
  // Select the subjects
  var selectStudentsParticipatingData = "".obs;
  var studentsParticipatingData = <ItemModel>[
    ItemModel(id: 1, title: 'طالب واحد'),
    ItemModel(id: 2, title: 'طالبين'),
    ItemModel(id: 3, title: 'ثلاث طلاب'),
    ItemModel(id: 4, title: 'أكثر من ذلك'),
  ];

  // Select Determine Goals
  var selectDetermineGoalsData = "".obs;
  var studentsDetermineGoalsData = <ItemModel>[
    ItemModel(id: 1, title: 'تحضير لاختبار'),
    ItemModel(id: 2, title: 'حل واجبات'),
    ItemModel(id: 3, title: 'اخرى'),
    ItemModel(id: 4, title: 'زيادة درجات'),
  ];
  // Select Days
  var selectDaysData = "".obs;
  var daysData = <ItemModel>[
    ItemModel(id: 1, title: 'السبت'),
    ItemModel(id: 2, title: 'الأحد'),
    ItemModel(id: 3, title: 'الاثنين'),
    ItemModel(id: 4, title: 'الثلاثاء'),
    ItemModel(id: 5, title: 'الاربعاء'),
    ItemModel(id: 6, title: 'الخميس'),
    ItemModel(id: 7, title: 'الجمعة'),
  ];
  // Select Days
  var selectTimePeriodData = "".obs;
  var timePeriodData = <ItemModel>[
    ItemModel(id: 1, title: 'الفترة الصباحية'),
    ItemModel(id: 2, title: 'الفترة المسائية'),
  ];
  // Select Days
  var selectTimeingRightData = "".obs;
  var timeingRightData = <ItemModel>[
    ItemModel(id: 1, title: '15:00 ص'),
    ItemModel(id: 2, title: '17:00 ص'),
    ItemModel(id: 3, title: '19:00 ص'),
    ItemModel(id: 4, title: '20:00 ص'),
    ItemModel(id: 5, title: '22:00 ص'),
  ];
  // Select classesPerWeek
  var selectClassesPerWeekData = "".obs;
  var classesPerWeekData = <ItemModel>[
    ItemModel(id: 1, title: 'حصة واحدة'),
    ItemModel(id: 2, title: 'حصتين'),

  ];
  // Select Classes Per Week
  var selectHoursData = "".obs;
  var hoursData = <ItemModel>[
    ItemModel(id: 1, title: 'ساعة ونص'),
    ItemModel(id: 2, title: 'ساعتين'),
    ItemModel(id: 3, title: '30 دقيقة'),
    ItemModel(id: 4, title: 'ساعة واحدة'),
    ItemModel(id: 5, title: 'ساعتين ونصف'),
  ];
}
