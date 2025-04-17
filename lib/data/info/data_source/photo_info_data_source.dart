import 'package:modu_3_hackathon/data/search/dto/photo_dto.dart';

abstract interface class PhotoInfoDataSource {
  Future<PhotoResultDto> getPhotos(String tags);
}
