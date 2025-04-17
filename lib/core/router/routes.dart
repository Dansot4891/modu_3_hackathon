import 'package:go_router/go_router.dart';
import 'package:modu_3_hackathon/data/search/data_source/impl/photo_data_source_impl.dart';
import 'package:modu_3_hackathon/data/search/repository_impl/photo_repository_impl.dart';
import 'package:modu_3_hackathon/domain/search/use_case/get_photos_use_case.dart';
import 'package:modu_3_hackathon/presentation/pages/info/photo_info_page.dart';
import 'package:modu_3_hackathon/presentation/pages/search/photo_search_page.dart';
import 'package:modu_3_hackathon/presentation/pages/search/photo_search_view_model.dart';

final routes = [
  GoRoute(
    path: AppRoutes.search.path,
    name: AppRoutes.search.name,
    builder: (context, state) {
      final viewModel = PhotoSearchViewModel(
          GetPhotosUseCase(PhotoRepositoryImpl(PhotoDataSourceImpl())));
      return PhotoSearchPage(viewModel);
    },
  ),
  GoRoute(
    path: AppRoutes.info.path,
    name: AppRoutes.info.name,
    builder: (context, state) {
      final id = state.pathParameters['id'];
      return PhotoInfoPage(
        id: int.parse(id!),
      );
    },
  ),
];

abstract class AppRoutes {
  static const search = _AppRoute(path: '/search', name: 'search');
  static const info = _AppRoute(path: '/info/:id', name: 'info');
}

class _AppRoute {
  final String path;
  final String name;
  const _AppRoute({
    required this.path,
    required this.name,
  });
}
