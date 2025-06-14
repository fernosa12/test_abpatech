import 'package:auto_route/auto_route.dart';

import '../di/di.dart';
import '../presentations/presentations.dart';

part 'router.gr.dart';

AppRouter router = di();

@AutoRouterConfig(
  replaceInRouteName: 'View,Route',
)
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: InitialRoute.page,
        ),
        AutoRoute(
          page: HomeRoute.page,
          guards: const [],
        ),
        // AutoRoute(
        //   page: DetailApproveRoute.page,
        //   guards: const [],
        // ),
        AutoRoute(
          page: AuthRoute.page,
          children: [
            AutoRoute(
              initial: true,
              page: LoginRoute.page,
              guards: const [
                // GuestGuard(),
              ],
            ),
          ],
        ),
      ];

  @override
  RouteType get defaultRouteType => const RouteType.cupertino();
}
