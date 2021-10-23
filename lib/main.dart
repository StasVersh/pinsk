import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'dart:ui' as ui;
import 'app/core/values/app_translations.dart';
import 'app/modules/main/tabs/home/controllers/home_controller.dart';
import 'app/modules/main/tabs/search/controllers/search_controller.dart';
import 'app/modules/main/tabs/settings/controllers/settings_controller.dart';
import 'app/routes/app_pages.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Intl.defaultLocale = ui.window.locale.toLanguageTag();
  initControllers();
  runApp(
    GetMaterialApp(
      title: "pinsk",
      initialRoute: Routes.MAIN,
      getPages: AppPages.routes,
      locale: ui.window.locale,
      translationsKeys: AppTranslation.translations,
      localizationsDelegates: [GlobalMaterialLocalizations.delegate],
      supportedLocales: [const Locale('en'), const Locale('ru')],
    ),
  );
}

void initControllers() {
  Get.put<HomeController>(HomeController(), permanent: true);
  Get.put<SearchController>(SearchController(), permanent: true);
  Get.put<SettingsController>(SettingsController(), permanent: true);
}
