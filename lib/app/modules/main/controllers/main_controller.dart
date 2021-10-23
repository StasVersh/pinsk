import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:pinsk/app/modules/main/tabs/home/views/home_view.dart';
import 'package:pinsk/app/modules/main/tabs/search/views/search_view.dart';
import 'package:pinsk/app/modules/main/tabs/settings/views/settings_view.dart';

class MainController extends GetxController {
  final selectedIconIndex = 0.obs;
  final List<Widget> pages = [
    HomeView(),
    SearchView(),
    SettingsView(),
  ].obs;

  void onTapIcon(int index) {
    selectedIconIndex.value = index;
  }

  MainController();

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
}
