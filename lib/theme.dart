import 'package:flutter/material.dart';

import 'constants.dart';

ThemeData theme(){
  return ThemeData(
    colorScheme: ThemeData().colorScheme.copyWith(
      primary:kPrimaryColor,
    ),
    primaryColor: kPrimaryColor,
    appBarTheme: appBarTheme(),
    scaffoldBackgroundColor:kBGColor,
    textTheme: textTheme(),
    inputDecorationTheme: inputDecorationTheme(),
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );
}
InputDecorationTheme inputDecorationTheme() {
  OutlineInputBorder outlineInputBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: const BorderSide(color: kTextColor),
      gapPadding: 10,
  );
  OutlineInputBorder focusedBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(10),
    borderSide: const BorderSide(color: kPrimaryColor,width: 2,),
    gapPadding: 10,
  );

  OutlineInputBorder enabledBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(10),
    borderSide: const BorderSide(color: Color(0xFFe8e8fa)),
    gapPadding: 10,
  );

   return InputDecorationTheme(
  //floatingLabelBehavior: FloatingLabelBehavior.never,
    contentPadding: const EdgeInsets.only(left: 40,right: 10,top: 18,bottom: 18),
    enabledBorder: enabledBorder,
    focusedBorder: focusedBorder,
     border: outlineInputBorder,
     fillColor: const Color(0xFFeeffff),
     filled: true,
     hintStyle: const TextStyle(
       color: Color(0xFFcfd1d1),
       fontSize: 17,
       fontWeight: FontWeight.w500,
       letterSpacing: 1

     )
  );
}


TextTheme textTheme() {
  return const TextTheme(
    bodyText1: TextStyle(color: kTextColor,),
    bodyText2: TextStyle(color: kTextColor,),
  );
}
AppBarTheme appBarTheme() {
  return const AppBarTheme(
   // color: kBGColor,
    backgroundColor: kPrimaryColor,
    elevation: 0,
    centerTitle: true,
    titleTextStyle: (TextStyle(color: kTextLiteColor, fontSize: 22)),
    iconTheme: IconThemeData(color: Colors.black),
  );
}