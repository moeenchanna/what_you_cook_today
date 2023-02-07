import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:smart_snackbars/enums/animate_from.dart';
import 'package:smart_snackbars/smart_snackbars.dart';

class Tools {

  static void statusBarTransparent() {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.light
    ));
  }

  static void snackBarAlert(BuildContext context,String title,String msg,Color color) {

    SmartSnackBars.showTemplatedSnackbar(
      context: context,
      backgroundColor: color,
      animateFrom: AnimateFrom.fromTop,
      leading: Container(
        margin: const EdgeInsets.only(right: 10),
        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.white.withOpacity(0.2),
        ),
        child: const Icon(
          Icons.check,
          color: Colors.white,
        ),
      ),
      titleWidget:  Text(
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
          msg,
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

    // final snackBar = SnackBar(
    //   /// need to set following properties for best effect of awesome_snackbar_content
    //   elevation: 0,
    //   behavior: SnackBarBehavior.fixed,
    //
    //   dismissDirection: DismissDirection.none,
    //   backgroundColor: Colors.transparent,
    //   content: AwesomeSnackbarContent(
    //     title: title,
    //     message:
    //     msg,
    //     /// change contentType to ContentType.success, ContentType.warning or ContentType.help for variants
    //     contentType: type,
    //   ),
    // );
    // ScaffoldMessenger.of(context)
    //   ..hideCurrentSnackBar()
    //   ..showSnackBar(snackBar);
  }
}