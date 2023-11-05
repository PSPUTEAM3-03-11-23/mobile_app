import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hackathon4/app/data/models/alert/alert.dart';

part 'database.freezed.dart';
part 'database.g.dart';

@freezed
class DataBase with _$DataBase {
  factory DataBase({
    required int id,
    required String host,
    required String port,
    required List<Alert> alerts,
    required String username,
    required String password,
    required String dbName,
    required String schema,
    required String title,
    required int organizationId,
  }) = _DataBase;

  factory DataBase.fromJson(Map<String, dynamic> json) =>
      _$DataBaseFromJson(json);
}
