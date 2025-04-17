import 'package:modu_3_hackathon/data/search/data_source/photo_data_source.dart';
import 'package:modu_3_hackathon/data/search/mapper/photo_mapper.dart';
import 'package:modu_3_hackathon/domain/search/model/photo.dart';
import 'package:modu_3_hackathon/domain/search/repository/photo_repository.dart';

class PhotoRepositoryImpl implements PhotoRepository {
  final PhotoDataSource _dataSource;

  const PhotoRepositoryImpl(this._dataSource);

  @override
  Future<List<Photo>> getPhotos(
    String tags,
  ) async {
    final resp = await _dataSource.getPhotos(tags);
    final photos = resp.hits.map((e) => e.toPhoto()).toList();
    return photos;
  }
}
