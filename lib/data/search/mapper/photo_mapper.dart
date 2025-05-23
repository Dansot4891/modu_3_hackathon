import 'package:modu_3_hackathon/data/search/dto/photo_dto.dart';
import 'package:modu_3_hackathon/domain/search/model/photo.dart';

extension PhotoMapper on PhotoDto {
  Photo toPhoto() {
    return Photo(
      tags: tags == null ? [] : tags!.split(','),
      previewURL: previewURL ?? '',
      user: user ?? '',
      id: id ?? 0,
    );
  }
}
