import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:smart_snackbars/enums/animate_from.dart';
import 'package:smart_snackbars/smart_snackbars.dart';

class Tools {
  static void statusBarTransparent() {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.light));
  }

  static void showSnackBar(
      BuildContext context, String title, String description) {
    SmartSnackBars.showTemplatedSnackbar(
      context: context,
      backgroundColor: (title == "Success") ? Colors.green : Colors.red,
      animateFrom: AnimateFrom.fromTop,
      leading: Container(
        margin: const EdgeInsets.only(right: 10),
        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.white.withOpacity(0.2),
        ),
        child: (title == "Success")
            ? const Icon(
                Icons.check,
                color: Colors.white,
              )
            : const Icon(
                Icons.close,
                color: Colors.white,
              ),
      ),
      titleWidget: Text(
        title,
        style: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),
      ),
      subTitleWidget: Padding(
        padding: const EdgeInsets.only(top: 8.0),
        child: Text(
          description,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w600,
            fontSize: 16,
          ),
        ),
      ),
      trailing: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: () {},
        child: const Icon(
          Icons.close,
          color: Colors.white,
        ),
      ),
    );
  }

  static void showAlertDialog(
      BuildContext context, String title, String description) {
    // set up the button
    Widget okButton = TextButton(
      child: const Text("Ok"),
      onPressed: () {
        Navigator.pop(context);
      },
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: Text(title),
      content: Text(description),
      actions: [
        okButton,
      ],
    );

    // show the dialog
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

  static validatePassword(String? txt) {
    if (txt == null || txt.isEmpty) {
      return "Invalid password!";
    }
    if (txt.length < 8) {
      return "Password must has 8 characters";
    }
    // if (!txt.contains(RegExp(r'[A-Z]'))) {
    //   return "Password must has uppercase";
    // }
    // if (!txt.contains(RegExp(r'[0-9]'))) {
    //   return "Password must has digits";
    // }
    // if (!txt.contains(RegExp(r'[a-z]'))) {
    //   return "Password must has lowercase";
    // }
    // if (!txt.contains(RegExp(r'[#?!@$%^&*-]'))) {
    //   return "Password must has special characters";
    // }
    else {
      return;
    }
  }

  static validateEmail(String? txt) {
    if (txt == null || txt.isEmpty) {
      return "Email can't Be Empty";
    }
    if (!txt.contains('@') || !txt.contains('.')) {
      return "Invalid email!";
    }
    // if (!txt.contains(RegExp(r'[A-Z]'))) {
    //   return "Password must has uppercase";
    // }
    // if (!txt.contains(RegExp(r'[0-9]'))) {
    //   return "Password must has digits";
    // }
    // if (!txt.contains(RegExp(r'[a-z]'))) {
    //   return "Password must has lowercase";
    // }
    // if (!txt.contains(RegExp(r'[#?!@$%^&*-]'))) {
    //   return "Password must has special characters";
    // }
    else {
      return "true";
    }
  }
}
