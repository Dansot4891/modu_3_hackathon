import 'package:modu_3_hackathon/photo/dto/photo_dto.dart';
import 'package:modu_3_hackathon/photo/model/photo.dart';

extension PhotoMapper on PhotoDto {
  Photo toPhoto() {
    return Photo(
      tags: tags == null ? [] : tags!.split(','),
      previewURL: previewURL ?? '',
    );
  }
}
