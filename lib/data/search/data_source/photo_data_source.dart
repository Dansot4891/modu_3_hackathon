import 'package:modu_3_hackathon/data/dto/photo_result_dto.dart';
import 'package:modu_3_hackathon/data/search/dto/photo_dto.dart';

abstract interface class PhotoDataSource {
  Future<PhotoResultDto<PhotoDto>> getPhotos(String tags);
}
