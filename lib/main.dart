import 'package:bookly/core/utils/constans.dart';
import 'package:bookly/feature/auth/presentation/login_view.dart';
import 'package:bookly/feature/auth/presentation/signup_view.dart';
import 'package:bookly/feature/home/presentation/home_view.dart';
import 'package:bookly/feature/onboarding/presentation/page_view_onboarding.dart';
import 'package:bookly/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: kPrimryColor),
      home: const LoginView(),
      routes: {
        LoginView.routeName: (context) => const LoginView(),
        PageViewOnboarding.routeName: (context) => const PageViewOnboarding(),
        HomeView.routeName: (context) => const HomeView(),
        SignupView.routeName: (context) => const SignupView(),
      },
    );
  }
}
