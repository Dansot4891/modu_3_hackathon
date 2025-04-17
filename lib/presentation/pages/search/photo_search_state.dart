import 'package:modu_3_hackathon/core/modules/state/base_state.dart';
import 'package:modu_3_hackathon/domain/search/model/photo.dart';

class PhotoSearchState {
  final BaseState state;
  final List<Photo> photos;
  final String errorMessage;
  const PhotoSearchState({
    this.state = BaseState.init,
    this.photos = const [],
    this.errorMessage = '',
  });

  PhotoSearchState copyWith({
    BaseState? state,
    List<Photo>? photos,
    String? errorMessage,
  }) {
    return PhotoSearchState(
      state: state ?? this.state,
      photos: photos ?? this.photos,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }
}
