import 'package:google_fonts/google_fonts.dart';
import 'package:tappyfi/core/helpers/file_export.dart';

class AppFonts{
  static TextStyle cairoStyle({double? fontSize,Color? color,FontWeight? fontWeight,double?letterSpacing,double?height})=>GoogleFonts.cairo(
    fontSize: fontSize,
    color: color,
    letterSpacing:letterSpacing,
    fontWeight: fontWeight,
    height: height,
  );
}