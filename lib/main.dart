import 'package:bookly/core/utils/app_router.dart';
import 'package:bookly/core/utils/constans.dart';
import 'package:bookly/feature/home/presentation/home_view.dart';
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
    return MaterialApp.router(
      routerConfig: GoRouteApp.router,
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: ColorsApp.kPrimryColor,
        appBarTheme: const AppBarTheme(backgroundColor: ColorsApp.kPrimryColor),
      ),
    );
  }
}
