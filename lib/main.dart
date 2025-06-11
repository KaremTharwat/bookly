import 'package:bookly/core/utils/constans.dart';
import 'package:bookly/feature/auth/presentation/login_view.dart';
import 'package:bookly/feature/auth/presentation/signup_view.dart';
import 'package:bookly/feature/onboarding/presentation/page_view_onboarding.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: kPrimryColor),
      home: SignupView(),
      routes: {
        LoginView.routeName: (context) => const LoginView(),
        PageViewOnboarding.routeName: (context) => const PageViewOnboarding(),
      },
    );
  }
}
