import 'package:modu_3_hackathon/data/dto/photo_dto.dart';

abstract interface class PhotoDataSource {
  Future<PhotoResultDto> getPhotos(List<String> tags);
}
