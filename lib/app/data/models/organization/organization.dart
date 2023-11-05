import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hackathon4/app/data/models/database/database.dart';

part 'organization.freezed.dart';
part 'organization.g.dart';

@freezed
class Organization with _$Organization {
  factory Organization({
    required String name,
    required List<DataBase> databases,
  }) = _Organization;

  factory Organization.fromJson(Map<String, dynamic> json) =>
      _$OrganizationFromJson(json);
}
