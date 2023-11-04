import 'package:get/get.dart';
import 'package:hackathon4/app/data/models/database/database.dart';

class DataBaseService extends GetxService {
  Future<DataBaseService> init() async {
    return this;
  }

  List<DataBase> databases = [
    DataBase(
      id: 0,
      host: '192.168.1.12',
      port: '8080',
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
      username: 'username',
      password: 'password',
      dbName: 'dbName',
      schema: 'schema',
      title: 'title',
      organizationId: 1,
    ),
  ].obs;
}
