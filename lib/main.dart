import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/foundation.dart';
import 'package:reservai/global/themes.dart';
import 'package:reservai/pages/splash/splash.dart';
import 'package:reservai/modules/home_module.dart';
import 'package:reservai/modules/login_module.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';
import 'package:flutter_native_splash/flutter_native_splash_web.dart';

void main() {
  // if (kDebugMode) {
  //   debugRepaintRainbowEnabled = true;
  //   debugPrintRebuildDirtyWidgets = true;
  // }

  FlutterNativeSplashWeb.registerWith(Registrar());

  // set the url strategy to use the web strategy
  if (kIsWeb) {
    setUrlStrategy(PathUrlStrategy());
  }

  runApp(const Reservai());
}

class Reservai extends StatelessWidget {
  const Reservai({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ReservAI',
      theme: reservaiLight,
      darkTheme: reservaiDark,
      themeMode: ThemeMode.system,
      initialRoute: '/login',
      routes: {
        '/': (context) => const HomeModule(),
        '/login': (context) => const LoginModule(),
        '/splash': (context) => const SplashPage(),
      },
    );
  }
}
