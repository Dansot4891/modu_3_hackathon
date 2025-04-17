import 'package:modu_3_hackathon/core/modules/error_handling/result.dart';
import 'package:modu_3_hackathon/core/modules/exception/custom_exception.dart';
import 'package:modu_3_hackathon/photo/data_source/photo_data_source.dart';
import 'package:modu_3_hackathon/photo/mapper/photo_mapper.dart';
import 'package:modu_3_hackathon/photo/model/photo.dart';
import 'package:modu_3_hackathon/photo/repository/photo_repository.dart';

class PhotoRepositoryImpl implements PhotoRepository {
  final PhotoDataSource _dataSource;

  const PhotoRepositoryImpl(this._dataSource);

  @override
  Future<Result<List<Photo>, CustomException>> getPhotos(
    List<String> tags,
  ) async {
    try {
      if (tags.map((e) => e.trim()).contains('바보')) {
        return Result.error(ImageValidateError());
      }
      final resp = await _dataSource.getPhotos(tags);
      final photos = resp.hits.map((e) => e.toPhoto()).toList();
      return Success(photos);
    } catch (e) {
      return Result.error(ImageNetworkError());
    }
  }
}
