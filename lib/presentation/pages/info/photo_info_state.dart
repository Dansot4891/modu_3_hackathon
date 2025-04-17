import 'package:modu_3_hackathon/core/modules/state/base_state.dart';
import 'package:modu_3_hackathon/domain/info/model/photo_info.dart';

class PhotoInfoState {
  final BaseState state;
  final PhotoInfo? photo;
  const PhotoInfoState({
    this.state = BaseState.init,
    this.photo,
  });

  PhotoInfoState copyWith({
    BaseState? state,
    PhotoInfo? photo,
  }) {
    return PhotoInfoState(
      state: state ?? this.state,
      photo: photo ?? this.photo,
    );
  }
}
