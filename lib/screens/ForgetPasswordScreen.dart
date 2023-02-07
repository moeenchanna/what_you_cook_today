import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../widgets/Widgets.dart';

class ForgetPasswordScreen extends StatefulWidget {
  const ForgetPasswordScreen({super.key});
    static String routeKey = "/forgetPassword";


  @override
  State<ForgetPasswordScreen> createState() => _ForgetPasswordScreenState();
}

class _ForgetPasswordScreenState extends State<ForgetPasswordScreen> {
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
              const LoginImageWidget(),
              const SizedBox(
                height: 25,
              ),
              const CustomTextHeading(
                title: "Forget Password",
                  textSize: 40
              ),
              const SizedBox(
                height: 25,
              ),

              const SizedBox(
                height: 15,
              ),

              CustomTextField(
                  hint: "Email",
                  keyboardType: "email",
                  onChanged: (v) {
                    print(v);
                  }),
              const SizedBox(
                height: 20,
              ),
              CustomButton(
                  buttonName: "Submit",
                  onPress: () {
                    Navigator.of(context).pop();
                  }),

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