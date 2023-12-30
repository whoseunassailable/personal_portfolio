import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:responsive_framework/responsive_breakpoints.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../presentation/desktop_home_screen.dart';
import '../../presentation/higher_desktop_resolution_screen.dart';
import '../../presentation/mobile_home_screen.dart';
import '../../presentation/tablet_home_screen.dart';
import '../constants/routes.dart';
part 'app_router.g.dart';

@riverpod
GoRouter goRouter(GoRouterRef ref) {
  return GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(
        path: '/',
        pageBuilder: (context, state) {
          final layoutSize = ResponsiveBreakpoints.of(context);
          return MaterialPage(
            fullscreenDialog: true,
            child: layoutSize.smallerOrEqualTo(MOBILE)
                ? const MobileHomeScreen()
                : (layoutSize.smallerOrEqualTo(TABLET)
                    ? const TabletHomeScreen()
                    : (layoutSize.smallerOrEqualTo(DESKTOP)
                        ? const DesktopHomeScreen()
                        : const HigherResolutionScreen())),
          );
        },
        routes: [
          GoRoute(
            path: 'mobileHomeScreen',
            name: Routes.mobileHomeScreen.name,
            pageBuilder: (context, state) => const MaterialPage(
              fullscreenDialog: true,
              child: MobileHomeScreen(),
            ),
          ),
          GoRoute(
            path: 'tabletHomeScreen',
            name: Routes.tabletHomeScreen.name,
            pageBuilder: (context, state) => const MaterialPage(
              fullscreenDialog: true,
              child: TabletHomeScreen(),
            ),
          ),
          GoRoute(
            path: 'desktopHomeScreen',
            name: Routes.desktopHomeScreen.name,
            pageBuilder: (context, state) => const MaterialPage(
              fullscreenDialog: true,
              child: DesktopHomeScreen(),
            ),
          ),
          GoRoute(
            path: 'higherResolutionScreen',
            name: Routes.higherResolutionScreen.name,
            pageBuilder: (context, state) => const MaterialPage(
              fullscreenDialog: true,
              child: HigherResolutionScreen(),
            ),
          ),
        ],
      ),
    ],
  );
}
