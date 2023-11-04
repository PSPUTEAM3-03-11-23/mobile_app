import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hackathon4/app/routes/app_pages.dart';

import '../controllers/login_controller.dart';

enum Calendar { day, week, month, year }

class LoginView extends GetView<LoginController> {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Вход'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const SizedBox(
                height: 8,
              ),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Логин',
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Пароль',
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              FilledButton(
                onPressed: () {
                  Get.offAllNamed(Routes.MAIN);
                },
                child: Text('Войти'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
