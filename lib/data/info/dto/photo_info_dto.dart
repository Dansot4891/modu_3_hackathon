import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'photo_info_dto.g.dart';

@JsonSerializable(explicitToJson: true)
class PhotoInfoDto {
  final String? previewURL;
  final String? user;
  final int? id;

  PhotoInfoDto({
    this.previewURL,
    this.user,
    this.id,
  });

  factory PhotoInfoDto.fromJson(Map<String, dynamic> json) =>
      _$PhotoInfoDtoFromJson(json);

  Map<String, dynamic> toJson() => _$PhotoInfoDtoToJson(this);
}
