import 'package:json_annotation/json_annotation.dart';
import 'package:search_movie/app/services/movies/models/index.dart';

part 'top_250_data.g.dart';

@JsonSerializable()
class Top250Data {
  final List<Top250DataDetail> items;
  final String? errorMessage;

  Top250Data(
    this.items,
    this.errorMessage,
  );
  factory Top250Data.fromJson(Map<String, dynamic> json) =>
      _$Top250DataFromJson(json);

  Map<String, dynamic> toJson() => _$Top250DataToJson(this);
}
