import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hackathon4/app/data/services/organization_service.dart';
import 'package:hackathon4/app/modules/home/controllers/home_controller.dart';
import 'package:hackathon4/app/modules/widgets/database_add/view/database_add_view.dart';

final OrganizationService organizationService = Get.find();

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Базы данных')),
        floatingActionButton: FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: () {
              Get.bottomSheet(DataBaseAddView());
            }),
        body: ListView.builder(
            itemCount: organizationService.organizations.length,
            itemBuilder: ((context, index) => Column(
                  children: [
                    Text(
                      organizationService.organizations[index].name,
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                    Column(
                      children:
                          organizationService.organizations[index].databases
                              .map(
                                (e) => ListTile(
                                  key: Key('${e.id}'),
                                  leading: const Icon(Icons.storage),
                                  tileColor:
                                      Theme.of(context).listTileTheme.tileColor,
                                  title: Text(e.title),
                                  subtitle: Text('${e.host}:${e.port}'),
                                ),
                              )
                              .toList(),
                    ),
                    Divider(),
                  ],
                ))));
  }
}
