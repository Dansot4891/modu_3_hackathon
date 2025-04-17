import 'package:modu_3_hackathon/core/modules/error_handling/result.dart';
import 'package:modu_3_hackathon/core/modules/exception/custom_exception.dart';
import 'package:modu_3_hackathon/domain/search/model/photo.dart';
import 'package:modu_3_hackathon/domain/search/repository/photo_repository.dart';

class GetPhotosUseCase {
  final PhotoRepository _photoRepository;

  GetPhotosUseCase(this._photoRepository);

  Future<Result<List<Photo>>> execute(String tags) async {
    try {
      if (tags.contains('바보')) {
        return Result.error(ImageValidateError());
      }
      final photos = await _photoRepository.getPhotos(tags);
      return Success(photos);
    } catch (e) {
      print(e);
      return Result.error(ImageNetworkError());
    }
  }
}
