import 'package:flutter/material.dart';

import '../utils/Utils.dart';

class CustomTextButtonWidget extends StatelessWidget {
  final String buttonName;
  final VoidCallback onPress;

  const CustomTextButtonWidget({
    Key? key,
    required this.buttonName,
    required this.onPress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPress,
      child: Text(
        buttonName,
        style: const TextStyle(
            color: Colors.deepOrange,
            fontWeight: FontWeight.bold,
            fontSize: Dimensions.fontSizeDefault),
      ),
    );
  }
}
