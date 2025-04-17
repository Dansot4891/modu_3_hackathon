import 'package:modu_3_hackathon/core/modules/error_handling/result.dart';
import 'package:modu_3_hackathon/core/modules/exception/custom_exception.dart';
import 'package:modu_3_hackathon/domain/model/photo.dart';
import 'package:modu_3_hackathon/domain/repository/photo_repository.dart';

class GetPhotosUseCase {
  final PhotoRepository _photoRepository;

  GetPhotosUseCase(this._photoRepository);

  Future<Result<List<Photo>>> execute(List<String> tags) async {
    try {
      if (tags.map((e) => e.trim()).contains('바보')) {
        return Result.error(ImageValidateError());
      }
      final photos = await _photoRepository.getPhotos(tags);
      return Success(photos);
    } catch (e) {
      return Result.error(ImageNetworkError());
    }
  }
}
