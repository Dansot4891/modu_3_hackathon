import 'package:modu_3_hackathon/data/info/data_source/photo_info_data_source.dart';
import 'package:modu_3_hackathon/data/info/mapper/photo_info_mapper.dart';
import 'package:modu_3_hackathon/domain/info/model/photo_info.dart';
import 'package:modu_3_hackathon/domain/info/repository/photo_info_repository.dart';

class PhotoInfoRepositoryImpl implements PhotoInfoRepository {
  final PhotoInfoDataSource _dataSource;

  const PhotoInfoRepositoryImpl(this._dataSource);

  @override
  Future<PhotoInfo> getPhotoInfo(
    int id,
  ) async {
    final resp = await _dataSource.getPhotoInfo(id);
    final photo = resp.hits.map((e) => e.toPhotoInfo()).first;
    return photo;
  }
}
