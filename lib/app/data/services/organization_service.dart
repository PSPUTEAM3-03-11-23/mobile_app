import 'package:get/get.dart';
import 'package:hackathon4/app/data/models/database/database.dart';
import 'package:hackathon4/app/data/models/organization/organization.dart';

class OrganizationService extends GetxService {
  Future<OrganizationService> init() async {
    return this;
  }

  List<Organization> organizations = [
    Organization(name: 'name', databases: [
      DataBase(
        id: 0,
        host: '192.168.1.12',
        port: '8080',
        alerts: [],
        username: 'username',
        password: 'password',
        dbName: 'dbName',
        schema: 'schema',
        title: 'title',
        organizationId: 1,
      ),
      DataBase(
        id: 1,
        host: '192.168.1.12',
        port: '8000',
        alerts: [],
        username: 'username',
        password: 'password',
        dbName: 'dbName',
        schema: 'schema',
        title: '3123',
        organizationId: 1,
      ),
      DataBase(
        id: 2,
        host: '192.168.1.25',
        port: '8080',
        alerts: [],
        username: 'username',
        password: 'password',
        dbName: 'dbName',
        schema: 'schema',
        title: 'title',
        organizationId: 1,
      ),
    ])
  ].obs;
}
