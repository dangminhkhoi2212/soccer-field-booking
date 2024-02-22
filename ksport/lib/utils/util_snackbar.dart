import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:client_app/const/colors.dart';

class SnackbarUtil {
  static SnackbarController getSnackBar(
          {required String title, required String message}) =>
      Get.snackbar(title, message,
          snackPosition: SnackPosition.TOP,
          colorText: Colors.black,
          backgroundColor: MyColor.secondary,
          // overlayBlur: 5,
          barBlur: 5,
          margin: const EdgeInsets.only(top: 10, right: 10, left: 10));
}