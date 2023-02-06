import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'screens/Screens.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'What You Cook Today',
      debugShowCheckedModeBanner: false,

      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: GoogleFonts.poppinsTextTheme(),

      ),
      home: const SplashScreen(),
      routes: {
        LoginScreen.routeKey: (context) => const LoginScreen(),
        ForgetPasswordScreen.routeKey:(context) => const ForgetPasswordScreen(),
        HomeScreen.routeKey:(context) => const HomeScreen(),
        SignUpScreen.routeKey:(context) => const SignUpScreen(),
      },
    );
  }
}
