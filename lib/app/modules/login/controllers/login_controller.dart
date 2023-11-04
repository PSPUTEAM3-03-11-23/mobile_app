import 'package:get/get.dart';

class LoginController extends GetxController {
  LoginController();

  final _obj = ''.obs;
  set obj(value) => _obj.value = value;
  get obj => _obj.value;
}
