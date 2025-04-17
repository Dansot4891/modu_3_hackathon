import 'package:flutter/foundation.dart';

class Photo {
  final List<String> tags;
  final String previewURL;
  final String user;
  Photo({
    required this.tags,
    required this.previewURL,
    required this.user,
  });

  Photo copyWith({
    List<String>? tags,
    String? previewURL,
    String? user,
  }) {
    return Photo(
      tags: tags ?? this.tags,
      previewURL: previewURL ?? this.previewURL,
      user: user ?? this.user,
    );
  }

  @override
  bool operator ==(covariant Photo other) {
    if (identical(this, other)) return true;

    return listEquals(other.tags, tags) &&
        other.previewURL == previewURL &&
        other.user == user;
  }

  @override
  int get hashCode => tags.hashCode ^ previewURL.hashCode ^ user.hashCode;

  @override
  String toString() =>
      'Photo(tags: $tags, previewURL: $previewURL, user: $user)';
}
