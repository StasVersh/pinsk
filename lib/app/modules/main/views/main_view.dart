import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:pinsk/app/core/values/locale_keys.dart';
import '../controllers/main_controller.dart';

class MainView extends GetView<MainController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() {
        return controller.pages.elementAt(controller.selectedIconIndex.value);
      }),
      bottomNavigationBar: Obx(
        () {
          return BottomNavigationBar(
            type: BottomNavigationBarType.shifting,
            currentIndex: controller.selectedIconIndex.value,
            onTap: (value) => controller.onTapIcon(value),
            items: [
              BottomNavigationBarItem(
                  icon: const FaIcon(FontAwesomeIcons.home),
                  backgroundColor: Colors.grey,
                  label: LocaleKeys.home.tr),
              BottomNavigationBarItem(
                  icon: const FaIcon(FontAwesomeIcons.search),
                  backgroundColor: Colors.redAccent,
                  label: LocaleKeys.search.tr),
              BottomNavigationBarItem(
                  icon: const FaIcon(FontAwesomeIcons.cogs),
                  backgroundColor: Colors.blueGrey,
                  label: LocaleKeys.settings.tr)
            ],
          );
        },
      ),
    );
  }
}
