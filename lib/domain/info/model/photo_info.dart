// ignore_for_file: public_member_api_docs, sort_constructors_first

class PhotoInfo {
  final String previewURL;
  final String user;
  final int id;
  PhotoInfo({
    required this.id,
    required this.previewURL,
    required this.user,
  });

  PhotoInfo copyWith({
    String? previewURL,
    String? user,
    int? id,
  }) {
    return PhotoInfo(
      previewURL: previewURL ?? this.previewURL,
      user: user ?? this.user,
      id: id ?? this.id,
    );
  }

  @override
  bool operator ==(covariant PhotoInfo other) {
    if (identical(this, other)) return true;

    return other.previewURL == previewURL &&
        other.user == user &&
        other.id == id;
  }

  @override
  int get hashCode => previewURL.hashCode ^ user.hashCode ^ id.hashCode;

  @override
  String toString() =>
      'PhotoInfo(previewURL: $previewURL, user: $user, id: $id)';
}
