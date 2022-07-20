import 'package:flutter/material.dart';
import 'package:reservai/pages/login_page/login_page.dart' deferred as login;

class LoginModule extends StatelessWidget {
  const LoginModule({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: login.loadLibrary(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        } else if (snapshot.hasError) {
          return const Center(child: Text('Error'));
        } else {
          return login.LoginPage();
        }
      },
    );
  }
}
