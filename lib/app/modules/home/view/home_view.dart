import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hackathon4/app/modules/home/controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Базы данных')),
        body: ReorderableListView(
          onReorder: (int oldIndex, int newIndex) {},
          children: <Widget>[
            for (int index = 0; index < 5; index += 1)
              ListTile(
                key: Key('$index'),
                tileColor: Theme.of(context).listTileTheme.tileColor,
                leading: Icon(Icons.storage),
                title: Text('Database $index'),
                subtitle: Text('192.168.1.1:8080'),
              ),
          ],
        ));
  }
}
