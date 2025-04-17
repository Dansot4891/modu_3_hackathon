import 'package:modu_3_hackathon/core/modules/error_handling/result.dart';
import 'package:modu_3_hackathon/core/modules/exception/custom_exception.dart';
import 'package:modu_3_hackathon/domain/model/photo.dart';

abstract interface class PhotoRepository {
  Future<Result<List<Photo>, CustomException>> getPhotos(List<String> tags);
}
