import 'package:freezed_annotation/freezed_annotation.dart';

part 'photo_result_dto.g.dart';

@JsonSerializable(explicitToJson: true, genericArgumentFactories: true)
class PhotoResultDto<T> {
  final int? total;
  final int? totalHits;
  final List<T> hits;

  PhotoResultDto({
    this.total,
    this.totalHits,
    required this.hits,
  });

  factory PhotoResultDto.fromJson(
    Map<String, dynamic> json,
    T Function(Object?) fromJsonT,
  ) =>
      _$PhotoResultDtoFromJson(json, fromJsonT);

  Map<String, dynamic> toJson(Object Function(T) toJsonT) =>
      _$PhotoResultDtoToJson(this, toJsonT);
}
