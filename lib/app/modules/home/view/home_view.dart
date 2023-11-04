import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hackathon4/app/data/services/database_service.dart';
import 'package:hackathon4/app/modules/home/controllers/home_controller.dart';

final DataBaseService databaseService = Get.find();

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Базы данных')),
        floatingActionButton:
            FloatingActionButton(child: Icon(Icons.add), onPressed: () {}),
        body: Obx(
          () => ReorderableListView(
            onReorder: (int oldIndex, int newIndex) {
              if (oldIndex < newIndex) {
                newIndex -= 1;
              }
              final item = databaseService.databases.removeAt(oldIndex);
              databaseService.databases.insert(newIndex, item);
            },
            children: <Widget>[
              for (final database in databaseService.databases)
                ListTile(
                  key: Key('${database.id}'),
                  leading: const Icon(Icons.storage),
                  tileColor: Theme.of(context).listTileTheme.tileColor,
                  title: Text(database.title),
                  subtitle: Text('${database.host}:${database.port}'),
                ),
            ],
          ),
        ));
  }
}
