import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/Utils.dart';
import 'Screens.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

   Widget _logo = const SizedBox();

  @override
  void initState() {

    Future.delayed(const Duration(milliseconds: 500), () {
      setState(() {
        _logo = Image(
          image: const AssetImage(ImagesResources.logo),
          width: MediaQuery.of(context).size.width * .50,
        );
      });
    });
    Future.delayed(const Duration(milliseconds: 3000), () async {
  
        Navigator.pushReplacementNamed(context, LoginScreen.routeKey);
     
    });
    super.initState();

    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(
            statusBarColor: Colors.grey,
            statusBarIconBrightness: Brightness.dark
          //color set to transperent or set your own color
        )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: Column(
        children:  [
          Expanded(
            child: Center(
              child: AnimatedSwitcher(
                duration: const Duration(seconds: 1),
                transitionBuilder: (child, animation) => ScaleTransition(
                  scale: animation,
                  child: child,
                ),
                child: _logo,
              ),
            ),
          ),
           Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Text(
              "What You Cook Today",
              style: GoogleFonts.bebasNeue(fontSize: 30),
            ),
          ),
        ],
      ),
    );
  }
}