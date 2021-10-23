import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pinsk/app/core/values/locale_keys.dart';
import 'package:pinsk/app/modules/main/tabs/search/controllers/search_controller.dart';

class SearchView extends GetView<SearchController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(LocaleKeys.search.tr),
      ),
    );
  }
}
