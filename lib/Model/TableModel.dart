import 'timeModel.dart';
import 'package:json_annotation/json_annotation.dart';

part 'TableModel.g.dart';

@JsonSerializable()
class TableModel {
  List<TimeModel> data;
  TableModel({this.data});
  factory TableModel.fromJson(Map<String, dynamic> json) =>
      _$TableModelFromJson(json);
  Map<String, dynamic> toJson() => _$TableModelToJson(this);
}