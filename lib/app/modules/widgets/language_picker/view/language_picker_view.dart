import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hackathon4/app/modules/widgets/language_picker/controllers/language_picker_controller.dart';

class LanguagePickerView extends StatelessWidget {
  LanguagePickerView({super.key});

  final LanguagePickerController controller =
      Get.put(LanguagePickerController());

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => SegmentedButton<Language>(
        segments: const <ButtonSegment<Language>>[
          ButtonSegment<Language>(
            value: Language.ru,
            label: Text('Русский 🇷🇺'),
          ),
          ButtonSegment<Language>(
            value: Language.en,
            label: Text('English 🇬🇧'),
          ),
          ButtonSegment<Language>(
            value: Language.cn,
            label: Text('中文 🇨🇳'),
          ),
        ],
        selected: <Language>{controller.languageSelected},
        onSelectionChanged: (Set<Language> newSelection) {
          controller.languageSelected = newSelection.first;
        },
      ),
    );
  }
}
