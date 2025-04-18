import 'package:get_it/get_it.dart';
import 'package:modu_3_hackathon/data/info/data_source/impl/photo_info_data_source_impl.dart';
import 'package:modu_3_hackathon/data/info/data_source/photo_info_data_source.dart';
import 'package:modu_3_hackathon/data/info/repository_impl/photo_info_repository_impl.dart';
import 'package:modu_3_hackathon/data/search/data_source/impl/photo_data_source_impl.dart';
import 'package:modu_3_hackathon/data/search/data_source/photo_data_source.dart';
import 'package:modu_3_hackathon/data/search/repository_impl/photo_repository_impl.dart';
import 'package:modu_3_hackathon/domain/info/repository/photo_info_repository.dart';
import 'package:modu_3_hackathon/domain/info/use_case/get_photo_info_use_case.dart';
import 'package:modu_3_hackathon/domain/search/repository/photo_repository.dart';
import 'package:modu_3_hackathon/domain/search/use_case/get_photos_use_case.dart';
import 'package:modu_3_hackathon/presentation/pages/info/photo_info_view_model.dart';
import 'package:modu_3_hackathon/presentation/pages/search/photo_search_view_model.dart';

final getIt = GetIt.instance;

void diSetup() {
  // 데이터 소스
  getIt.registerSingleton<PhotoDataSource>(PhotoDataSourceImpl());
  getIt.registerSingleton<PhotoInfoDataSource>(PhotoInfoDataSourceImpl());

  // 레포지토리
  getIt.registerSingleton<PhotoRepository>(PhotoRepositoryImpl(getIt()));
  getIt.registerSingleton<PhotoInfoRepository>(
    PhotoInfoRepositoryImpl(getIt()),
  );

  // 유스케이스
  getIt.registerSingleton(GetPhotoInfoUseCase(getIt()));
  getIt.registerSingleton(GetPhotosUseCase(getIt()));

  // 뷰모델
  getIt.registerFactory(() => PhotoSearchViewModel(getIt()));
  getIt.registerFactory(() => PhotoInfoViewModel(getIt()));
}
