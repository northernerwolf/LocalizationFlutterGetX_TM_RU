import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class LanguageController extends GetxController {
  final languageController = GetStorage();
  var myLocal = [];

  void saveLocale(List list) {
    languageController.write('savedLocale', list);
  }

  @override
  void onInit() {
    List<dynamic>? savedLocale = languageController.read('savedLocale');
    if (savedLocale != null) {
      myLocal = savedLocale;
    }
    super.onInit();
  }

  List? readSavedLocale() {
    List<dynamic>? savedLocale = languageController.read('savedLocale');
    if (savedLocale != null) {
      myLocal = savedLocale;
    }
    return savedLocale;
  }
}

class LocalString extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'tm_TM': {
          "appName": "Dil çalyşmak GetX üsti bilen",
          "about": "GetX kitaphanasy ",
        },
        'ru_Ru': {
          "appName": "Языковой обмен через GetX",
          "about": "GetX библиотека",
        }
      };
}
