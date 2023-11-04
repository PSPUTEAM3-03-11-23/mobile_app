import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/alert_controller.dart';

class AlertsView extends GetView<AlertsController> {
  const AlertsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Базы данных')),
      body: ListView.builder(
        itemCount: 8,
        itemBuilder: (context, index) {
          return ListTile(
            key: Key('$index'),
            tileColor: Theme.of(context).listTileTheme.tileColor,
            leading: Icon(Icons.notifications_outlined),
            title: Text('Событие $index'),
            subtitle: Text('One'),
          );
        },
      ),
    );
  }
}
