import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hackathon4/app/data/services/organization_service.dart';

import '../controllers/alert_controller.dart';

final OrganizationService organizationService = Get.find();

class AlertsView extends GetView<AlertsController> {
  const AlertsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Базы данных')),
      body: ListView.builder(
        itemCount: organizationService.organizations.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Text('name'),
              Column(
                children: [organizationService.organizations[index].databases]
                    .map((e) => Text('data'))
                    .toList(),
              )
            ],
          );
        },
      ),
    );
  }
}

// ListTile(
//             key: Key('${alertService.alerts[index].dbId}'),
//             tileColor: Theme.of(context).listTileTheme.tileColor,
//             leading: Icon(Icons.notifications_outlined),
//             title: Text(alertService.alerts[index].error),
//             subtitle: Text('${alertService.alerts[index].date}'),
//           );