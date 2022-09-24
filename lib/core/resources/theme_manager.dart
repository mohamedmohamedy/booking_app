import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'color_manager.dart';
import 'font_manager.dart';
import 'styles_manager.dart';
import 'values_manager.dart';

ThemeData getApplicationLighTheme() {
  return ThemeData(
    scaffoldBackgroundColor: ColorManager.sWhite,
    // app bar theme
    appBarTheme: AppBarTheme(
      systemOverlayStyle: const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark,
      ),
      centerTitle: false,
      backgroundColor: ColorManager.sWhite,
      iconTheme: const IconThemeData(color: Colors.black),
      elevation: AppSize.s0,
      titleTextStyle: getMediumStyle(
        fontSize: FontSize.s18,
        color: Colors.black, // It will be changed
        // color: ColorManager.black,
      ),
    ),

    iconTheme: const IconThemeData(
      color: Colors.black,
    ),

    listTileTheme: const ListTileThemeData(
      iconColor: Colors.black,
      textColor: Colors.black,
    ),

    drawerTheme: const DrawerThemeData(
      backgroundColor: ColorManager.sWhite,
    ),
    //BottomNavigationBarTheme
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      showSelectedLabels: false,
      showUnselectedLabels: false,
      // backgroundColor: ColorManager.bottomNavColor,
      elevation: AppSize.s0,
      unselectedLabelStyle: TextStyle(fontSize: FontSize.s0),
      selectedLabelStyle: TextStyle(fontSize: FontSize.s0),
      type: BottomNavigationBarType.fixed,
    ),

    // _______/ It will be updated \_________________________
    textTheme: TextTheme(
      titleLarge: getBoldStyle(
        fontSize: FontSize.s22,
        color: Colors.black,
      ),
      titleMedium: getBoldStyle(
        fontSize: FontSize.s18,
        color: Colors.black,
      ),
      displayMedium: getRegularStyle(
        color: Colors.black,
        fontSize: FontSize.s18,
      ),
      displaySmall: getRegularStyle(
        color: ColorManager.gGrey,
        fontSize: FontSize.s14,
      ),
      bodySmall: getRegularStyle(
        color: ColorManager.gGrey,
        fontSize: FontSize.s16,
      ),
    ),
    // input decoration theme (text form field)
    inputDecorationTheme: InputDecorationTheme(
      fillColor: Colors.white,
      filled: true,
      border: InputBorder.none,
      // content padding
      contentPadding: const EdgeInsets.all(AppPadding.p8),
      // hint style
      hintStyle: getRegularStyle(
        color: ColorManager.gGrey,
        fontSize: FontSize.s14,
      ),
      labelStyle: getRegularStyle(
        color: ColorManager.gGrey,
        fontSize: FontSize.s14,
      ),
      // enabled border style
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(AppSize.s50),
        borderSide: BorderSide.none,
      ),

      // focused border style
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(AppSize.s50),
        borderSide: BorderSide.none,
      ),

      // error border style
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(AppSize.s50),
        borderSide: BorderSide.none,
      ),
      // focused border style
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(AppSize.s50),
        borderSide: BorderSide.none,
      ),
      // label style
    ),
  );
}

ThemeData getApplicationDarkTheme() {
  return ThemeData(
    scaffoldBackgroundColor: ColorManager.sBlack,
    // app bar theme
    appBarTheme: AppBarTheme(
      systemOverlayStyle: const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark,
      ),
      centerTitle: false,
      backgroundColor: ColorManager.sBlack,
      iconTheme: const IconThemeData(color: Colors.white),
      elevation: AppSize.s0,
      titleTextStyle: getMediumStyle(
        fontSize: FontSize.s18,
        color: Colors.white, // It will be changed
        // color: ColorManager.white,
      ),
    ),

    listTileTheme: const ListTileThemeData(
      iconColor: Colors.white,
      textColor: Colors.white,
    ),

    drawerTheme: const DrawerThemeData(
      backgroundColor: ColorManager.sBlack,
    ),

    iconTheme: const IconThemeData(
      color: Colors.white,
    ),

    textTheme: TextTheme(
      titleLarge: getBoldStyle(
        fontSize: FontSize.s22,
        color: Colors.white,
      ),
      titleMedium: getBoldStyle(
        fontSize: FontSize.s18,
        color: Colors.white,
      ),
      displayMedium: getRegularStyle(
        color: Colors.white,
        fontSize: FontSize.s18,
      ),
      displaySmall: getRegularStyle(
        color: ColorManager.gGrey,
        fontSize: FontSize.s14,
      ),
      bodySmall: getRegularStyle(
        color: ColorManager.gGrey,
        fontSize: FontSize.s16,
      ),
    ),
    // // input decoration theme (text form field)
    inputDecorationTheme: InputDecorationTheme(
      fillColor: ColorManager.bBlack,
      filled: true,
      border: InputBorder.none,
      // content padding
      contentPadding: const EdgeInsets.all(AppPadding.p8),
      // hint style
      hintStyle: getLightStyle(
        color: ColorManager.gGrey,
        fontSize: FontSize.s14,
      ),
      labelStyle: getRegularStyle(
        color: ColorManager.gGrey,
        fontSize: FontSize.s14,
      ),
      // enabled border style
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(AppSize.s50),
        borderSide: BorderSide.none,
      ),

      // focused border style
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(AppSize.s50),
        borderSide: BorderSide.none,
      ),

      // error border style
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(AppSize.s50),
        borderSide: BorderSide.none,
      ),
      // focused border style
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(AppSize.s50),
        borderSide: BorderSide.none,
      ),
      // label style
    ),
  );
}
