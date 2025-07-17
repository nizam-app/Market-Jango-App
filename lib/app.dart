import 'package:flutter/material.dart';
import 'package:market_jango/core/theme/light_dark_theme.dart';
import 'package:market_jango/routes/app_routes.dart';
import 'core/theme/text_theme.dart';



class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
      theme:themeMood(),

    );
  }
}

