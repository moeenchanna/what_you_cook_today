import 'package:flutter/material.dart';
import '../utils/Utils.dart';

class LoginImageWidget extends StatelessWidget {
  const LoginImageWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ( Container(
      width: double.infinity,
      height: 200.0,
      alignment: Alignment.center,
      decoration:  const BoxDecoration(
        image: DecorationImage(
            image: AssetImage(ImagesResources.loginImage),
            fit: BoxFit.fill
        ),
      ),
    ));
  }
}