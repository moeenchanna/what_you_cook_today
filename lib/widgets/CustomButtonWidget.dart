import 'package:flutter/material.dart';

import '../utils/Utils.dart';

class CustomButton extends StatelessWidget {
  final String buttonName;
  final VoidCallback onPress;

  const CustomButton({
    Key? key,
    required this.buttonName,
    required this.onPress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: Container(
          padding: const EdgeInsets.all(15),
          decoration: BoxDecoration(
              color: Colors.deepOrange.shade500,
              borderRadius: BorderRadius.circular(12)),
          child: Center(
            child: Text(
              buttonName,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: Dimensions.fontSizeMedium,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}