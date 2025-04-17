// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'photo_info_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PhotoInfoDto _$PhotoInfoDtoFromJson(Map<String, dynamic> json) => PhotoInfoDto(
      previewURL: json['previewURL'] as String?,
      user: json['user'] as String?,
      id: (json['id'] as num?)?.toInt(),
    );

Map<String, dynamic> _$PhotoInfoDtoToJson(PhotoInfoDto instance) =>
    <String, dynamic>{
      'previewURL': instance.previewURL,
      'user': instance.user,
      'id': instance.id,
    };
