class PixabayParams {
  final String key;
  final String lang;
  final String imageType;
  final String tags;

  PixabayParams({
    required this.key,
    this.lang = 'ko',
    this.imageType = 'photo',
    required this.tags,
  });

  String toQuery() {
    return '?key=$key&lang=$lang&image_type=$imageType&tags=$tags';
  }
}
