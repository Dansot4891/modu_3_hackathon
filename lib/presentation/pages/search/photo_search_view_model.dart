import 'package:flutter/foundation.dart';
import 'package:modu_3_hackathon/core/modules/error_handling/result.dart';
import 'package:modu_3_hackathon/core/modules/state/base_state.dart';
import 'package:modu_3_hackathon/domain/model/photo.dart';
import 'package:modu_3_hackathon/domain/use_case/get_photos_use_case.dart';
import 'package:modu_3_hackathon/presentation/pages/search/photo_search_state.dart';

class PhotoSearchViewModel with ChangeNotifier {
  final GetPhotosUseCase _getPhotosUseCase;

  PhotoSearchViewModel(this._getPhotosUseCase);

  PhotoSearchState _state = const PhotoSearchState();
  PhotoSearchState get state => _state;

  void getPhotos(String tags) async {
    _state = state.copyWith(state: BaseState.loading);
    notifyListeners();
    final result = await _getPhotosUseCase.execute(tags);
    switch (result) {
      case Success<List<Photo>>():
        _state = state.copyWith(state: BaseState.success, photos: result.data);
      case Error<List<Photo>>():
        _state = state.copyWith(
            state: BaseState.error, errorMessage: result.error.message);
    }
    notifyListeners();
  }
}
