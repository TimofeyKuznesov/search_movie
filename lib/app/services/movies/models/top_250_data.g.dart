// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'top_250_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Top250Data _$Top250DataFromJson(Map<String, dynamic> json) => Top250Data(
      (json['items'] as List<dynamic>)
          .map((e) => Top250DataDetail.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['errorMessage'] as String?,
    );

Map<String, dynamic> _$Top250DataToJson(Top250Data instance) =>
    <String, dynamic>{
      'items': instance.items,
      'errorMessage': instance.errorMessage,
    };
