// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'top_250_data_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Top250DataDetail _$Top250DataDetailFromJson(Map<String, dynamic> json) =>
    Top250DataDetail(
      json['id'] as String?,
      json['rank'] as String?,
      json['title'] as String?,
      json['fullTitle'] as String?,
      json['year'] as String?,
      json['image'] as String?,
      json['crew'] as String?,
      json['iMDbRating'] as String?,
      json['iMDbRatingCount'] as String?,
    );

Map<String, dynamic> _$Top250DataDetailToJson(Top250DataDetail instance) =>
    <String, dynamic>{
      'id': instance.id,
      'rank': instance.rank,
      'title': instance.title,
      'fullTitle': instance.fullTitle,
      'year': instance.year,
      'image': instance.image,
      'crew': instance.crew,
      'iMDbRating': instance.iMDbRating,
      'iMDbRatingCount': instance.iMDbRatingCount,
    };
