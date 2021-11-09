import 'package:json_annotation/json_annotation.dart';

part 'top_250_data_detail.g.dart';

@JsonSerializable()
class Top250DataDetail {
  final String? id;
  final String? rank;
  final String? title;
  final String? fullTitle;
  final String? year;
  final String? image;
  final String? crew;
  final String? iMDbRating;
  final String? iMDbRatingCount;

  Top250DataDetail(
    this.id,
    this.rank,
    this.title,
    this.fullTitle,
    this.year,
    this.image,
    this.crew,
    this.iMDbRating,
    this.iMDbRatingCount,
  );
  factory Top250DataDetail.fromJson(Map<String, dynamic> json) =>
      _$Top250DataDetailFromJson(json);

  Map<String, dynamic> toJson() => _$Top250DataDetailToJson(this);
}
