import 'package:flutter/material.dart';
import 'package:what_you_cook_today/Helper/Helper.dart';
import 'package:what_you_cook_today/screens/Screens.dart';
import 'package:what_you_cook_today/utils/Utils.dart';

import '../widgets/Widgets.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  static String routeKey = "/signUp";

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
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
      body: SafeArea(
        top: false,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const LoginImageWidget(),
              const SizedBox(
                height: 25,
              ),
              const CustomTextHeading(
                title: "Signup Form",
              ),
              const SizedBox(
                height: 25,
              ),
              CustomTextField(
                  hint: "Name",
                  keyboardType: "text",
                  onChanged: (v) {
                    print(v);
                  }),
              const SizedBox(
                height: 10,
              ),
              CustomTextField(
                  hint: "Phone",
                  keyboardType: "number",
                  onChanged: (v) {
                    print(v);
                  }),
              const SizedBox(
                height: 10,
              ),
              CustomTextField(
                  hint: "Email",
                  keyboardType: "email",
                  onChanged: (v) {
                    print(v);
                  }),
              const SizedBox(
                height: 10,
              ),
              CustomTextField(
                  hint: "Password",
                  keyboardType: "text",
                  password: true,
                  onChanged: (v) {
                    print(v);
                  }),
              const SizedBox(
                height: 20,
              ),
              CustomButton(
                  buttonName: "Sign Up",
                  onPress: () {
                    Navigator.pushNamed(context, HomeScreen.routeKey);
                  })
            ],
          ),
        ),
      ),
      bottomNavigationBar: CustomBottomAppBarWidget(
          title1: "Back to",
          title2: " Login",
          onPress: () {
            Navigator.of(context).pop();
          }),
    );
  }
}

