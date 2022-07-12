import 'package:auto_route/auto_route.dart';

import '../history_page.dart';
import '../home_page.dart';
import '../settings_page.dart';

import 'package:flutter/material.dart';

part 'app_router.gr.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: HomePage, initial: true),
    AutoRoute(page: HistoryPage),
    AutoRoute(page: SettingsPage),
  ],
)
class AppRouter extends _$AppRouter {}
