class PixabayParams {
  final String key;
  final String? tags;
  final int? id;

  PixabayParams({
    required this.key,
    this.id,
    this.tags,
  });

  String toQuery() {
    if (id == null) {
      return '?key=$key&q=$tags';
    } else if (tags == null) {
      return '?key=$key&id=$id';
    }
    return '?key=$key&q=$tags&id=$id';
  }
}
