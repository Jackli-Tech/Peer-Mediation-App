// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'TableModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TableModel _$TableModelFromJson(Map<String, dynamic> json) {
  return TableModel(
    data: (json['data'] as List)
        ?.map((e) =>
            e == null ? null : TimeModel.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$TableModelToJson(TableModel instance) =>
    <String, dynamic>{
      'data': instance.data,
    };
