import 'package:flutter/material.dart';
import 'package:flutter_localizations_with_getx/language/language_change_widget.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import 'language/language.dart';

final LanguageController languageController = Get.put(LanguageController());
// final myLocal = LanguageController().myLocal;
final myLocal = LanguageController().readSavedLocale();
void main() async {
  await GetStorage.init();
  runApp(const MyApp());
}

// void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      translations: LocalString(),
      locale: myLocal != null
          ? Locale(myLocal![0], myLocal![1])
          : const Locale('tm', 'TM'),
      debugShowCheckedModeBanner: false,
      home: const LanguageChangeWidget(),
    );
  }
}
