import 'package:modu_3_hackathon/core/modules/error_handling/result.dart';
import 'package:modu_3_hackathon/core/modules/exception/custom_exception.dart';
import 'package:modu_3_hackathon/domain/info/model/photo_info.dart';
import 'package:modu_3_hackathon/domain/info/repository/photo_info_repository.dart';

class GetPhotoInfoUseCase {
  final PhotoInfoRepository _photoRepository;

  GetPhotoInfoUseCase(this._photoRepository);

  Future<Result<PhotoInfo>> execute(int id) async {
    try {
      final photo = await _photoRepository.getPhotoInfo(id);
      return Success(photo);
    } catch (e) {
      return Result.error(ImageNetworkError());
    }
  }
}
