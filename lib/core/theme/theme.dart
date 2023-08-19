import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../app_color.dart';

ThemeData getAppTheme(){
  return ThemeData(

          scaffoldBackgroundColor: AppColors.background,
          textTheme: TextTheme(
        displayLarge: GoogleFonts.salsa(
          color: AppColors.white,
          fontWeight: FontWeight.w400,
          fontSize: 25,
        ),
        displayMedium: GoogleFonts.salsa(
          color: AppColors.white,
          fontWeight: FontWeight.w400,
          fontSize: 16,
        ),
        displaySmall: GoogleFonts.roboto(
                                color: AppColors.red,
                                fontWeight: FontWeight.w400,
                                fontSize: 15,
                              ),
                             
      ),
      inputDecorationTheme: InputDecorationTheme(
        //enabled border
                  enabledBorder:  OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10)
                  ),
                  //fouced border
                  focusedBorder:  OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10)
                  ),
                  //hint
                  hintStyle: GoogleFonts.roboto(
          color: AppColors.grey,
          fontWeight: FontWeight.w600,
          fontSize: 13,
        ),
                  fillColor: AppColors.lightBlack,
                  filled: true
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        backgroundColor: AppColors.red),  
                        
      ),



  );
}