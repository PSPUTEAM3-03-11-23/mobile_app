import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hackathon4/app/data/services/alert_service.dart';

import '../controllers/alert_controller.dart';

final AlertService alertService = Get.find();

class AlertsView extends GetView<AlertsController> {
  const AlertsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Базы данных')),
      body: ListView.builder(
        itemCount: alertService.alerts.length,
        itemBuilder: (context, index) {
          return ListTile(
            key: Key('${alertService.alerts[index].dbId}'),
            tileColor: Theme.of(context).listTileTheme.tileColor,
            leading: Icon(Icons.notifications_outlined),
            title: Text(alertService.alerts[index].error),
            subtitle: Text('${alertService.alerts[index].date}'),
          );
        },
      ),
    );
  }
}
