class PixabayParams {
  final String key;
  final String lang;
  final String imageType;
  final String tags;
  final int? id;

  PixabayParams({
    required this.key,
    this.id,
    this.lang = 'ko',
    this.imageType = 'photo',
    this.tags = '',
  });

  String toQuery() {
    return '?key=$key&lang=$lang&image_type=$imageType&q=$tags';
  }
}
