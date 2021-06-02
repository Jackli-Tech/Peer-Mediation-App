
import 'package:json_annotation/json_annotation.dart';

part 'timeModel.g.dart';

@JsonSerializable()
class TimeModel {
  @JsonKey(name:"_id")
  String id;
  String mondayTable;
  String tuesdayTable;
  String wednesdayTable;
  String thursdayTable;
  String fridayTable;
  TimeModel(
      {this.id,
      this.mondayTable,
      this.tuesdayTable,
      this.wednesdayTable,
      this.thursdayTable,
      this.fridayTable,
     });

  factory TimeModel.fromJson(Map<String, dynamic> json) =>
      _$TimeModelFromJson(json);
  Map<String, dynamic> toJson() => _$TimeModelToJson(this);
}