// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/foundation.dart';

class Photo {
  final List<String> tags;
  final String previewURL;
  final String user;
  final int id;
  Photo({
    required this.id,
    required this.tags,
    required this.previewURL,
    required this.user,
  });

  Photo copyWith({
    List<String>? tags,
    String? previewURL,
    String? user,
    int? id,
  }) {
    return Photo(
      tags: tags ?? this.tags,
      previewURL: previewURL ?? this.previewURL,
      user: user ?? this.user,
      id: id ?? this.id,
    );
  }

  @override
  bool operator ==(covariant Photo other) {
    if (identical(this, other)) return true;

    return listEquals(other.tags, tags) &&
        other.previewURL == previewURL &&
        other.user == user &&
        other.id == id;
  }

  @override
  int get hashCode {
    return tags.hashCode ^ previewURL.hashCode ^ user.hashCode ^ id.hashCode;
  }

  @override
  String toString() {
    return 'Photo(tags: $tags, previewURL: $previewURL, user: $user, id: $id)';
  }
}
