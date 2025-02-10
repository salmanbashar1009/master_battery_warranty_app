import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:master_battery_warranty_app/presentation/ui/utils/styles.dart';


// Don't use sp for font size in web and desktop app

class AppTheme {
  static ThemeData get light => ThemeData(
    primaryColor: const Color(0xFFE11E1B),
    scaffoldBackgroundColor: const Color(0xFFFFFFFF),
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.transparent,
      elevation: 0,
    ),
    fontFamily: "Menseal",
    textTheme: TextTheme(
      headlineLarge: TextStyle(
          fontSize: 32.sp,
          fontWeight: FontWeight.w600,
          color: const Color(0xFF1D1F2C)
      ),
      titleLarge: TextStyle(
        fontSize: 24.sp,
        fontWeight: FontWeight.w600,
        color: const Color(0xFF382F2C)
      ),
      titleSmall: GoogleFonts.inter(
          fontSize: 14.sp,
          fontWeight: FontWeight.w600,
          color: const Color(0xFF1D1F2C)
      ),
      bodyLarge: GoogleFonts.inter(
          fontSize: 16.sp,
          fontWeight: FontWeight.w400,
          color:  Color(0xFF667085)
      ),

      bodyMedium: GoogleFonts.inter(
          fontSize: 14.sp,
          fontWeight: FontWeight.w400,
          color: const Color(0xFF1D1F2C)
      ),
      bodySmall: GoogleFonts.inter(
          fontSize: 12.sp,
          fontWeight: FontWeight.w400,
          color: const Color(0xFF1D1F2C)
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      hintStyle: TextStyle(
        color: mediumGrey,
        fontSize: 16.sp,
        fontFamily: "Inter",
        fontWeight: FontWeight.w400
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.r),
        borderSide: BorderSide(color: ligtGrey),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.r),
        borderSide: BorderSide(color: ligtGrey),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.r),
        borderSide: BorderSide(color: red),
      ),
    )
  );
}