import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hackathon4/app/modules/main/controllers/main_controller.dart';

class ProfileView extends GetView<MainController> {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Профиль')),
      body: ListView(children: [
        ListTile(
          onTap: () {},
          leading: Icon(Icons.notifications),
          title: Text('Уведомления'),
        ),
        ListTile(
          onTap: () {},
          leading: Icon(Icons.storage),
          title: Text('Управление базами данных'),
        ),
        ListTile(
          onTap: () {},
          leading: Icon(Icons.pan_tool),
          title: Text('Управление доступом'),
        ),
        Divider(),
        ListTile(
          onTap: () {},
          leading: Icon(Icons.exit_to_app),
          title: Text('Выйти из аккаунта'),
        ),
      ]),
    );
  }
}
