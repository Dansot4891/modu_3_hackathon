// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'photo_result_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PhotoResultDto<T> _$PhotoResultDtoFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    PhotoResultDto<T>(
      total: (json['total'] as num?)?.toInt(),
      totalHits: (json['totalHits'] as num?)?.toInt(),
      hits: (json['hits'] as List<dynamic>).map(fromJsonT).toList(),
    );

Map<String, dynamic> _$PhotoResultDtoToJson<T>(
  PhotoResultDto<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'total': instance.total,
      'totalHits': instance.totalHits,
      'hits': instance.hits.map(toJsonT).toList(),
    };
