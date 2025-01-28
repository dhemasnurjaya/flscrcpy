import 'package:auto_route/auto_route.dart';

import 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: AppSettingsRoute.page),
        AutoRoute(page: MirroringStatusRoute.page),
        AutoRoute(page: DashboardRoute.page, initial: true),
      ];
}
