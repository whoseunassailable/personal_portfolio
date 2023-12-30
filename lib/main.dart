import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:personal_portfolio/l10n/app_localizations.dart';
import 'package:responsive_framework/breakpoint.dart';
import 'package:responsive_framework/responsive_breakpoints.dart';

import 'core/constants/layout_breakpoints.dart';
import 'core/routing/app_router.dart';

void main() {
  runApp(
    ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends ConsumerWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final goRouter = ref.watch(goRouterProvider);
    return MaterialApp.router(
      routerConfig: goRouter,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      builder: (context, child) => ResponsiveBreakpoints.builder(
        breakpoints: const [
          Breakpoint(
              start: LayoutBreakpoints.mobileStart,
              end: LayoutBreakpoints.mobileEnd,
              name: MOBILE),
          Breakpoint(
              start: LayoutBreakpoints.tabletStart,
              end: LayoutBreakpoints.tabletEnd,
              name: TABLET),
          Breakpoint(
              start: LayoutBreakpoints.desktopStart,
              end: LayoutBreakpoints.desktopEnd,
              name: DESKTOP),
          Breakpoint(
              start: LayoutBreakpoints.twoKResolutionStart,
              end: LayoutBreakpoints.infiniteResolution,
              name: '4K'),
        ],
        child: child!,
      ),
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}
