import 'package:modu_3_hackathon/data/info/data_source/photo_info_data_source.dart';
import 'package:modu_3_hackathon/data/search/mapper/photo_mapper.dart';
import 'package:modu_3_hackathon/domain/info/repository/photo_info_repository.dart';
import 'package:modu_3_hackathon/domain/search/model/photo.dart';

class PhotoInfoRepositoryImpl implements PhotoInfoRepository {
  final PhotoInfoDataSource _dataSource;

  const PhotoInfoRepositoryImpl(this._dataSource);

  @override
  Future<List<Photo>> getPhotos(
    String tags,
  ) async {
    final resp = await _dataSource.getPhotos(tags);
    final photos = resp.hits.map((e) => e.toPhoto()).toList();
    return photos;
  }
}
