import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class CustomTextField extends StatelessWidget {


  // It requires the onChanged Function
  // and the hint to be Shown
  final String hint;
  final Widget? icon;
  final Widget? prefixIcon;
  final String keyboardType;
  final bool center;
  final bool margin;
  final FocusScopeNode? node;
  final MaskTextInputFormatter? maskFormatter;
  final int maxLength;
  final bool enabled;
  final String? initialValue;
  final dynamic onChanged;
  final double? height;
  final bool primaryShadow;
  final TextEditingController? controller;
  final bool password;
  final bool rounded;
  final VoidCallback? onEnter;

  const CustomTextField({
    Key? key,
    required this.hint,
    this.icon,
    this.maskFormatter,
    this.onChanged,
    this.prefixIcon,
    this.maxLength = 200,
    this.keyboardType = 'text',
    this.controller,
    this.center = false,
    this.onEnter,
    this.node,
    this.height,
    this.enabled = true,
    this.initialValue,
    this.primaryShadow = false,
    this.password = false,
    this.margin = false,
    this.rounded = false,

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    const inputs = {
      'email': TextInputType.emailAddress,
      'number': TextInputType.number,
      'tel': TextInputType.phone,
      'text': TextInputType.text,
      'date': TextInputType.datetime
    };
    var numberFormatter = [];
    if (keyboardType == 'number') {
      numberFormatter = <TextInputFormatter>[FilteringTextInputFormatter.digitsOnly];
    }

    return
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: Container(
          decoration: BoxDecoration(
              color: Colors.grey.shade200,
              border: Border.all(color: Colors.white),
              borderRadius: BorderRadius.circular(12)),
          child:  Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: TextField(
              controller: controller,
              onEditingComplete: onEnter == null && node != null ? () => node?.nextFocus() : onEnter,
              onChanged: onChanged,
              enabled: enabled,
              obscureText: password,
              keyboardType: inputs[keyboardType],
              inputFormatters: maskFormatter != null ? [...numberFormatter, maskFormatter!] : null,
              //maxLength: maxLength,
              decoration: InputDecoration(
                  border: InputBorder.none, hintText: hint),
            ),
          ),
        ),
      );
  }
}
