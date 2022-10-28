// ignore_for_file: unused_element

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:terms/src/app/router/destinations.dart';
import 'package:terms/src/app/router/root.dart';
import 'package:terms/src/modules/favorites/favorites.dart';
import 'package:terms/src/modules/home/home.dart';
import 'package:terms/src/modules/home/presentation/views/home_detail/home_detail_maths/views/home_detail_maths_page.dart';
import 'package:terms/src/modules/home/presentation/views/home_detail_info/views/home_detail_info_page.dart';
import 'package:terms/src/modules/settings/presentation/views/setting_page.dart';

const _pageKey = ValueKey('_pageKey');
const _scaffoldKey = ValueKey('_scaffoldKey');

class AppRouter {
  final GoRouter router = GoRouter(
    
    routes: [
      GoRoute(
        path: '/',
        pageBuilder: (context, state) => const MaterialPage<void>(
          key: _pageKey,
          child: RootLayout(
            key: _scaffoldKey,
            selectedIndex: 0,
            child: HomePage(),
          ),
        ),
      ),
      GoRoute(
        path: '/homeDetail',
        pageBuilder: (context, state) => const MaterialPage<void>(
          key: _pageKey,
          child: RootLayout(
            key: _scaffoldKey,
            selectedIndex: 0,
            child: HomeDetailMathsPage(),
          ),
        ),
      ),

      GoRoute(
        path: '/homeDetailInfo',
        pageBuilder: (context, state) => const MaterialPage<void>(
          key: _pageKey,
          child: RootLayout(
            key: _scaffoldKey,
            selectedIndex: 0,
            child: HomeDetailInfoPage(),
          ),
        ),
      ),

      //!
      GoRoute(
        path: '/star',
        pageBuilder: (context, state) => const MaterialPage<void>(
          key: _pageKey,
          child: RootLayout(
            key: _scaffoldKey,
            selectedIndex: 1,
            child: FavoritesPage(),
          ),
        ),
      ),

      //!
      GoRoute(
        path: '/settings',
        pageBuilder: (context, state) => const MaterialPage<void>(
          key: _pageKey,
          child: RootLayout(
            key: _scaffoldKey,
            selectedIndex: 2,
            child: SettingPage(),
          ),
        ),
      ),

      for (final route in destinations.skip(3))
        GoRoute(
          path: route.route,
          pageBuilder: (context, state) => MaterialPage<void>(
            key: _pageKey,
            child: RootLayout(
              key: _scaffoldKey,
              selectedIndex: destinations.indexOf(route),
              child: const SizedBox(),
            ),
          ),
        ),
    ],
  );
}
