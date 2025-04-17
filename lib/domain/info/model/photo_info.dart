// ignore_for_file: public_member_api_docs, sort_constructors_first

class PhotoInfo {
  final String previewURL;
  final String user;
  final int id;
  final String tags;
  PhotoInfo({
    required this.previewURL,
    required this.user,
    required this.id,
    required this.tags,
  });

  PhotoInfo copyWith({
    String? previewURL,
    String? user,
    int? id,
    String? tags,
  }) {
    return PhotoInfo(
      previewURL: previewURL ?? this.previewURL,
      user: user ?? this.user,
      id: id ?? this.id,
      tags: tags ?? this.tags,
    );
  }

  @override
  bool operator ==(covariant PhotoInfo other) {
    if (identical(this, other)) return true;

    return other.previewURL == previewURL &&
        other.user == user &&
        other.id == id &&
        other.tags == tags;
  }

  @override
  int get hashCode {
    return previewURL.hashCode ^ user.hashCode ^ id.hashCode ^ tags.hashCode;
  }

  @override
  String toString() {
    return 'PhotoInfo(previewURL: $previewURL, user: $user, id: $id, tags: $tags)';
  }
}
