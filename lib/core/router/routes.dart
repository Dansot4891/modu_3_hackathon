import 'package:go_router/go_router.dart';
import 'package:modu_3_hackathon/presentation/pages/info/photo_info_page.dart';
import 'package:modu_3_hackathon/presentation/pages/search/photo_search_page.dart';

final routes = [
  GoRoute(
    path: AppRoutes.search.path,
    name: AppRoutes.search.name,
    builder: (context, state) {
      return const PhotoSearchPage();
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
