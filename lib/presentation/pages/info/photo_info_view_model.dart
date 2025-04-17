import 'package:flutter/foundation.dart';
import 'package:modu_3_hackathon/core/modules/error_handling/result.dart';
import 'package:modu_3_hackathon/core/modules/state/base_state.dart';
import 'package:modu_3_hackathon/domain/info/model/photo_info.dart';
import 'package:modu_3_hackathon/domain/info/use_case/get_photo_info_use_case.dart';
import 'package:modu_3_hackathon/presentation/pages/info/photo_info_state.dart';

class PhotoInfoViewModel with ChangeNotifier {
  final GetPhotoInfoUseCase _getPhotoInfoUseCase;

  PhotoInfoViewModel(this._getPhotoInfoUseCase);

  PhotoInfoState _state = const PhotoInfoState();
  PhotoInfoState get state => _state;

  void getPhotoInfo(int id) async {
    _state = state.copyWith(state: BaseState.loading);
    notifyListeners();
    final result = await _getPhotoInfoUseCase.execute(id);
    switch (result) {
      case Success<PhotoInfo>():
        _state = state.copyWith(state: BaseState.success, photo: result.data);
      case Error<PhotoInfo>():
        _state = state.copyWith(
            state: BaseState.error, errorMessage: result.error.message);
    }
    notifyListeners();
  }
}
