import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pinsk/app/core/values/locale_keys.dart';
import 'package:pinsk/app/modules/main/tabs/settings/controllers/settings_controller.dart';

class SettingsView extends GetView<SettingsController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(LocaleKeys.settings.tr),
      ),
    );
  }
}
