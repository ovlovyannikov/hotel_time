import 'package:auto_route/auto_route.dart';
import 'package:hotel_time/features/chart/chart.dart';
import 'package:hotel_time/features/events/events.dart';
import 'package:hotel_time/features/home/home.dart';
import 'package:hotel_time/features/services/services.dart';
import 'package:hotel_time/features/shops/shops.dart';
import 'package:hotel_time/features/login/login.dart';
import 'package:hotel_time/features/user_profile/user_profile.dart';

part 'router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: LoginRoute.page,
          path: '/',
        ),
        AutoRoute(
          page: PhoneVerifyRoute.page,
          path: '/verify',
        ),
        AutoRoute(
          page: HomeRoute.page,
          path: '/home',
          children: [
            AutoRoute(
              page: EventsRoute.page,
              path: 'events',
            ),
            AutoRoute(
              page: SettingsRoute.page,
              path: 'settings',
            ),
            AutoRoute(
              page: ChartRoute.page,
              path: 'chart',
            ),
            AutoRoute(
              page: ShopsRoute.page,
              path: 'shops',
            ),
            AutoRoute(
              page: UserProfileRoute.page,
              path: 'user-profile',
            ),
          ],
        ),
      ];
}
