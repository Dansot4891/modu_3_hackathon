// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'photo_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PhotoDto _$PhotoDtoFromJson(Map<String, dynamic> json) => PhotoDto(
      tags: json['tags'] as String?,
      previewURL: json['previewURL'] as String?,
      user: json['user'] as String?,
      id: (json['id'] as num?)?.toInt(),
    );

Map<String, dynamic> _$PhotoDtoToJson(PhotoDto instance) => <String, dynamic>{
      'tags': instance.tags,
      'previewURL': instance.previewURL,
      'user': instance.user,
      'id': instance.id,
    };
