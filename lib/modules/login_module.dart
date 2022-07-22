import 'package:flutter/material.dart';
import 'package:reservai/pages/login_page/login_page.dart' deferred as login;

class LoginModule extends StatelessWidget {
  const LoginModule({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: login.loadLibrary(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return login.LoginPage();
        }
        return const Center(child: CircularProgressIndicator());
      },
    );
  }
}
