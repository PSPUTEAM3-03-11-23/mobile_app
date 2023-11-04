import 'package:get/get.dart';
import 'package:hackathon4/app/data/models/database/database.dart';

class MainController extends GetxController {
  MainController();

  final RxInt _currentPageIndex = 0.obs;

  List<DataBase> databases = [
    DataBase(
      host: '123',
      port: '123',
      username: 'username',
      password: 'password',
      dbName: 'dbName',
      schema: 'schema',
      title: 'title',
      organizationId: 1,
    ),
    DataBase(
      host: '123',
      port: '123',
      username: 'username',
      password: 'password',
      dbName: 'dbName',
      schema: 'schema',
      title: '3123',
      organizationId: 1,
    ),
    DataBase(
      host: '123',
      port: '123',
      username: 'username',
      password: 'password',
      dbName: 'dbName',
      schema: 'schema',
      title: 'title',
      organizationId: 1,
    ),
  ];

  set currentPageIndex(value) {
    if (0 <= _currentPageIndex.value || _currentPageIndex.value >= 2) {
      _currentPageIndex.value = value;
    }
  }

  get currentPageIndex => _currentPageIndex.value;
}
