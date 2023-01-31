import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'language.dart';

class LanguageChangeWidget extends StatefulWidget {
  const LanguageChangeWidget({super.key});

  @override
  State<LanguageChangeWidget> createState() => _LanguageChangeWidgetState();
}

class _LanguageChangeWidgetState extends State<LanguageChangeWidget> {
  @override
  Widget build(BuildContext context) {
    final LanguageController languageController = Get.put(LanguageController());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                SizedBox(
                    width: 150,
                    child: Text(
                      "appName".tr,
                      maxLines: 3,
                      textDirection: TextDirection.ltr,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                      ),
                    )),
              ],
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(
              height: 100,
            ),
            Text(
              'about'.tr,
              style: const TextStyle(fontSize: 20),
            ),
            const SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Card(
                  child: IconButton(
                      icon: Image.asset(
                        'assets/images/russian.png',
                      ),
                      padding: EdgeInsets.all(10),
                      iconSize: 60,
                      onPressed: () async {
                        const Locale('ru', 'RU');

                        Get.back();
                        Get.updateLocale(const Locale('ru', 'RU'));
                        languageController.saveLocale(['ru', 'RU']);
                      }),
                ),
                Card(
                  child: IconButton(
                      icon: Image.asset(
                        'assets/images/turkmen.png',
                      ),
                      iconSize: 60,
                      padding: const EdgeInsets.all(10),
                      onPressed: () async {
                        const Locale('tm', 'TM');

                        Get.back();
                        Get.updateLocale(const Locale('tm', 'TM'));
                        languageController.saveLocale(['tm', 'TM']);
                      }),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
