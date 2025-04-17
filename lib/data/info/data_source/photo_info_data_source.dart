import 'package:modu_3_hackathon/data/dto/photo_result_dto.dart';
import 'package:modu_3_hackathon/data/info/dto/photo_info_dto.dart';

abstract interface class PhotoInfoDataSource {
  Future<PhotoResultDto<PhotoInfoDto>> getPhotoInfo(int id);
}
