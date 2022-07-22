import 'package:flutter/material.dart';
import 'package:reservai/pages/home_page/home_page.dart' deferred as home;

class HomeModule extends StatelessWidget {
  const HomeModule({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: home.loadLibrary(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return home.HomePage();
        }
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );
  }
}
