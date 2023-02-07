import 'package:flutter/material.dart';

import '../Helper/Helper.dart';
import '../widgets/Widgets.dart';

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
    Tools.statusBarTransparent();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(
        centerTitle: true,
        //automaticallyImplyLeading: false,
        backgroundColor: Colors.deepOrange,
        title:
            const CustomTextHeading(title: "What You Cook Today", textSize: 20),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.logout,
              color: Colors.white,
            ),
            onPressed: () {
              // do something
              Navigator.of(context).pop();
            },
          ),
        ],
      ),
      body: SafeArea(
        top: false,
        child: SingleChildScrollView(
          child: Column(
            children: const [],
          ),
        ),
      ),
      drawer: const CustomDrawer(
          userName: "Moeen Channa", userEmail: "moeenchannah@gmail.com"),
    );
  }
}
