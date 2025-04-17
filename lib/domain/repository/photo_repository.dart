import 'package:modu_3_hackathon/domain/model/photo.dart';

abstract interface class PhotoRepository {
  Future<List<Photo>> getPhotos(List<String> tags);
}
