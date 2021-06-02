// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'timeModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TimeModel _$TimeModelFromJson(Map<String, dynamic> json) {
  return TimeModel(
    id: json['_id'] as String,
    mondayTable: json['mondayTable'] as String,
    tuesdayTable: json['tuesdayTable'] as String,
    wednesdayTable: json['wednesdayTable'] as String,
    thursdayTable: json['thursdayTable'] as String,
    fridayTable: json['fridayTable'] as String,
  );
}

Map<String, dynamic> _$TimeModelToJson(TimeModel instance) => <String, dynamic>{
      '_id': instance.id,
      'mondayTable': instance.mondayTable,
      'tuesdayTable': instance.tuesdayTable,
      'wednesdayTable': instance.wednesdayTable,
      'thursdayTable': instance.thursdayTable,
      'fridayTable': instance.fridayTable,
    };
