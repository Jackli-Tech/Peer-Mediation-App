import 'formModel.dart';
import 'package:json_annotation/json_annotation.dart';

part 'SuperModels.g.dart';

@JsonSerializable()
class SuperModel {
  List<FormModel> data;
  SuperModel({this.data});
  factory SuperModel.fromJson(Map<String, dynamic> json) =>
      _$SuperModelFromJson(json);
  Map<String, dynamic> toJson() => _$SuperModelToJson(this);
}