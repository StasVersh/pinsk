import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pinsk/app/core/values/locale_keys.dart';
import 'package:pinsk/app/modules/main/tabs/home/controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(LocaleKeys.home.tr),
      ),
    );
  }
}
