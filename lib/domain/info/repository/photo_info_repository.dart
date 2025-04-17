import 'package:modu_3_hackathon/domain/info/model/photo_info.dart';

abstract interface class PhotoInfoRepository {
  Future<PhotoInfo> getPhotoInfo(int id);
}
