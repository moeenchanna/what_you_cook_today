
import 'package:flutter/material.dart';

import '../utils/Dimensions.dart';

class CustomBottomAppBarWidget extends StatelessWidget {
  final String title1;
  final String title2;
  final VoidCallback onPress;

  const CustomBottomAppBarWidget({
    Key? key,
    required this.title1,
    required this.title2,
    required this.onPress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.transparent, elevation: 0, // to get rid of the shadow
      child: Padding(
        padding: const EdgeInsets.only(bottom: 15),
        child: Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                title1,
                style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: Dimensions.fontSizeMedium),
              ),
              GestureDetector(
                onTap: onPress,
                child: Text(
                  title2,
                  style: const TextStyle(
                      color: Colors.deepOrange,
                      fontWeight: FontWeight.bold,
                      fontSize: Dimensions.fontSizeMedium),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}