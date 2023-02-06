import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:what_you_cook_today/utils/Utils.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
    static String routeKey = "/home";


  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.light
      //color set to transperent or set your own color
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.grey.shade300,
      body: SafeArea(
        top: false,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(ImagesResources.loginImage),
              const SizedBox(
                height: 25,
              ),
              Text(
                "What You Cook Today",
                style: GoogleFonts.bebasNeue(fontSize: 40),
              ),

            ],
          ),
        ),
      ),

    );
  }
}