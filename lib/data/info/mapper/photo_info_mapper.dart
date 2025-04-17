import 'package:modu_3_hackathon/data/info/dto/photo_info_dto.dart';
import 'package:modu_3_hackathon/domain/info/model/photo_info.dart';

extension PhotoInfoMapper on PhotoInfoDto {
  PhotoInfo toPhotoInfo() {
    return PhotoInfo(
      previewURL: previewURL ?? '',
      user: user ?? '',
      id: id ?? 0,
      tags: tags ?? '',
    );
  }
}
