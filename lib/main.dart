import 'package:flutter/material.dart';
import 'package:saku_digital/login_page.dart' as login;
import 'package:saku_digital/home_page.dart';
import 'package:saku_digital/splash_screen.dart';
import 'package:saku_digital/login_services/register_page.dart';
import 'package:saku_digital/login_services/forgot_password_page.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SakuDigital',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => SplashScreen(),
        '/login': (context) => const login.LoginPage(),
        '/register': (context) => const RegisterPage(),
        '/forgotPassword': (context) => const ForgotPasswordPage(),
        '/home': (context) => const HomePage(),
      },
    );
  }
}
