import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EditProfileController extends GetxController {
  TextEditingController EmailC = TextEditingController();
  TextEditingController UsernameC = TextEditingController();
  TextEditingController AlamatC = TextEditingController();

  var labelColor = Colors.grey.obs;

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}
