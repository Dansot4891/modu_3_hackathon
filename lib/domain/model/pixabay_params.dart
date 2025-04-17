import 'package:modu_3_hackathon/core/constants/key/api_key.dart';

class PixabayParams {
  final String key;
  final String lang;
  final String imageType;
  final String tags;

  PixabayParams({
    this.key = ApiKey.pixabayKey,
    this.lang = 'ko',
    this.imageType = 'photo',
    required this.tags,
  });

  String toQuery() {
    return '?key=$key&lang=$lang&image_type=$imageType&tags=$tags';
  }
}
