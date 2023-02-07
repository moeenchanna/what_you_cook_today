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
  final _emailTextEditingController = TextEditingController();
  final _passwordTextEditingController = TextEditingController();
  bool _validate = false;

  @override
  void initState() {
    super.initState();
    Tools.statusBarTransparent();
  }

  @override
  void dispose() {
    _emailTextEditingController.dispose();
    _passwordTextEditingController.dispose();
    super.dispose();
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
                  controller: _emailTextEditingController,
                  hint: "Email",
                  keyboardType: "email",
                  onChanged: (v) {
                    print(v);
                  }),
              const SizedBox(
                height: 10,
              ),
              CustomTextField(
                  controller: _passwordTextEditingController,
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

                    Tools.showSnackBar(context, "Success", "Login Successfull");
                    Navigator.pushNamed(context, HomeScreen.routeKey);
                    // Tools.showSnackBar(
                    //     context,
                    //     "Email Required",
                    //     Tools.validateEmail(
                    //         _emailTextEditingController.text));



                    // Tools.showSnackBar(
                    //     context,
                    //     "Password Required",
                    //     Tools.validatePassword(
                    //         _passwordTextEditingController.text));
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
