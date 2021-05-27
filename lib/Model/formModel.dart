import 'package:json_annotation/json_annotation.dart';

part 'formModel.g.dart';

@JsonSerializable()
class FormModel {
  @JsonKey(name:"_id")
  String id;
  String username;
  String MediatorName;
  String DisputantAName;
  String DisputantBName;
  String Conflict;
  String HowCome;
  String Refer;
  String Agree;
  String DisputantASign;
  String DisputantBSign;
  String createTime;
  String updatedAt;
  FormModel(
      {this.id,
      this.username,
      this.MediatorName,
      this.DisputantAName,
      this.DisputantBName,
      this.Conflict,
      this.HowCome,
      this.Refer,
      this.Agree,
      this.DisputantASign,
      this.DisputantBSign,
      this.createTime,
      this.updatedAt});

  factory FormModel.fromJson(Map<String, dynamic> json) =>
      _$FormModelFromJson(json);
  Map<String, dynamic> toJson() => _$FormModelToJson(this);
}