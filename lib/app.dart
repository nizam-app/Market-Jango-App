import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:market_jango/routes/app_routes.dart';

import 'bindings/controller_binding.dart';
import 'core/utils/text_translations.dart';
import 'core/utils/translation_text.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: BindingController(),
      translations: AppTranslations(),
      locale: Locale('en'),
      fallbackLocale: Locale("bn"),
      theme: themeChanger.themeMode,
      onGenerateRoute: AppRoutes.routes,
      debugShowCheckedModeBanner: false,
    );
  }
}

