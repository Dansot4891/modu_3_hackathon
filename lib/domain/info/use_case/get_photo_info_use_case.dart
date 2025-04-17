import 'package:modu_3_hackathon/core/modules/error_handling/result.dart';
import 'package:modu_3_hackathon/core/modules/exception/custom_exception.dart';
import 'package:modu_3_hackathon/domain/info/repository/photo_info_repository.dart';
import 'package:modu_3_hackathon/domain/search/model/photo.dart';

class GetPhotoInfoUseCase {
  final PhotoInfoRepository _photoRepository;

  GetPhotoInfoUseCase(this._photoRepository);

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
