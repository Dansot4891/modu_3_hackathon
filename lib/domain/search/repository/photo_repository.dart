import 'package:modu_3_hackathon/domain/search/model/photo.dart';

abstract interface class PhotoRepository {
  Future<List<Photo>> getPhotos(String tags);
}
