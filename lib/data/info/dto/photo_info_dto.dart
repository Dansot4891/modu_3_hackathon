import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'photo_info_dto.g.dart';

@JsonSerializable(explicitToJson: true)
class PhotoInfoDto {
  final String? previewURL;
  final String? user;
  final int? id;
  final String? tags;

  PhotoInfoDto({
    this.previewURL,
    this.user,
    this.id,
    this.tags,
  });

  factory PhotoInfoDto.fromJson(Map<String, dynamic> json) =>
      _$PhotoInfoDtoFromJson(json);

  Map<String, dynamic> toJson() => _$PhotoInfoDtoToJson(this);
}
