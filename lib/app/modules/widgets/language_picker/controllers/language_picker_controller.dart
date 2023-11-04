import 'package:get/get.dart';

enum Language { ru, en, cn }

class LanguagePickerController extends GetxController {
  LanguagePickerController();

  final _languageSelected = Language.ru.obs;
  set languageSelected(Language value) {
    _languageSelected.value = value;
  }

  Language get languageSelected => _languageSelected.value;
}
