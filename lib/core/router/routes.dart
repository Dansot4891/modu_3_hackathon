import 'package:go_router/go_router.dart';
import 'package:modu_3_hackathon/core/di/app_di.dart';
import 'package:modu_3_hackathon/presentation/pages/info/photo_info_page.dart';
import 'package:modu_3_hackathon/presentation/pages/info/photo_info_view_model.dart';
import 'package:modu_3_hackathon/presentation/pages/search/photo_search_page.dart';
import 'package:modu_3_hackathon/presentation/pages/search/photo_search_view_model.dart';

final routes = [
  GoRoute(
    path: AppRoutes.search.path,
    name: AppRoutes.search.name,
    builder: (context, state) {
      final viewModel = PhotoSearchViewModel(getIt());
      return PhotoSearchPage(viewModel);
    },
  ),
  GoRoute(
    path: AppRoutes.info.path,
    name: AppRoutes.info.name,
    builder: (context, state) {
      final id = state.pathParameters['id']!;
      final viewModel = PhotoInfoViewModel(getIt());
      viewModel.getPhotoInfo(int.parse(id));
      return PhotoInfoPage(
        int.parse(id),
        viewModel: viewModel,
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
