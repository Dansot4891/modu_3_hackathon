// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:modu_3_hackathon/core/modules/state/base_state.dart';
import 'package:modu_3_hackathon/domain/info/model/photo_info.dart';

class PhotoInfoState {
  final BaseState state;
  final PhotoInfo? photo;
  final String errorMessage;
  const PhotoInfoState({
    this.state = BaseState.init,
    this.photo,
    this.errorMessage = '',
  });

  PhotoInfoState copyWith({
    BaseState? state,
    PhotoInfo? photo,
    String? errorMessage,
  }) {
    return PhotoInfoState(
      state: state ?? this.state,
      photo: photo ?? this.photo,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }
}
