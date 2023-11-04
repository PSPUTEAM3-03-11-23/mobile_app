import 'package:get/get.dart';
import 'package:hackathon4/app/data/models/alert/alert.dart';

class AlertService extends GetxService {
  Future<AlertService> init() async {
    return this;
  }

  List<Alert> alerts = [
    Alert(
      id: 0,
      dbId: 0,
      error: 'error',
      date: DateTime(2023, 10, 8),
    ),
    Alert(
      id: 1,
      dbId: 0,
      error: 'error',
      date: DateTime(2023, 10, 8),
    ),
    Alert(
      id: 2,
      dbId: 0,
      error: 'error',
      date: DateTime(2023, 10, 8),
    ),
    Alert(
      id: 3,
      dbId: 0,
      error: 'error',
      date: DateTime(2023, 10, 8),
    ),
    Alert(
      id: 4,
      dbId: 0,
      error: 'error',
      date: DateTime(2023, 10, 8),
    ),
  ];
}
