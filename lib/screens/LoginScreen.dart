import 'package:flutter/material.dart';
import 'package:what_you_cook_today/screens/Screens.dart';

import '../Helper/Helper.dart';
import '../widgets/Widgets.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  static String routeKey = "/login";

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
            children: [
              const LoginImageWidget(),
              const SizedBox(
                height: 25,
              ),
              const CustomTextHeading(
                title: "Login Now",
              ),
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
                  buttonName: "Login",
                  onPress: () {
                    //Navigator.pushNamed(context, HomeScreen.routeKey);
                    Tools.showSnackBar(context, "Fail", "Description");
                    Tools.showAlertDialog(context,  "Login Fail", "Try again");
                  }),
              const SizedBox(
                height: 2,
              ),
              CustomTextButtonWidget(
                  buttonName: "Forget password",
                  onPress: () {
                    Navigator.pushNamed(context, ForgetPasswordScreen.routeKey);
                  })
            ],
          ),
        ),
      ),
      bottomNavigationBar: CustomBottomAppBarWidget(
          title1: "Not a member?",
          title2: " Register now",
          onPress: () {
            Navigator.pushNamed(context, SignUpScreen.routeKey);
          }),
    );
  }


}
