import 'package:modu_3_hackathon/core/modules/state/base_state.dart';
import 'package:modu_3_hackathon/domain/model/photo.dart';

class PhotoSearchState {
  final BaseState state;
  final List<Photo> photos;
  const PhotoSearchState({
    this.state = BaseState.loading,
    this.photos = const [],
  });

  PhotoSearchState copyWith({
    BaseState? state,
    List<Photo>? photos,
  }) {
    return PhotoSearchState(
      state: state ?? this.state,
      photos: photos ?? this.photos,
    );
  }
}
