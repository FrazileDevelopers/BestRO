// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i5;
import 'package:bestro/pages/bottomNavHome/bottomNavHome.dart' as _i1;
import 'package:bestro/pages/home/home.dart' as _i2;
import 'package:bestro/pages/profile/profile.dart' as _i4;
import 'package:bestro/pages/services/services.dart' as _i3;
import 'package:flutter/material.dart' as _i6;

class BestRoRouter extends _i5.RootStackRouter {
  BestRoRouter([_i6.GlobalKey<_i6.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    BottomNavHome.name: (routeData) {
      return _i5.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i1.BottomNavHome());
    },
    HomeRouter.name: (routeData) {
      return _i5.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i2.HomePage());
    },
    ServicesRouter.name: (routeData) {
      return _i5.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i3.Services());
    },
    ProfileRouter.name: (routeData) {
      return _i5.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i4.Profile());
    }
  };

  @override
  List<_i5.RouteConfig> get routes => [
        _i5.RouteConfig(BottomNavHome.name, path: '/', children: [
          _i5.RouteConfig(HomeRouter.name,
              path: 'home-page', parent: BottomNavHome.name),
          _i5.RouteConfig(ServicesRouter.name,
              path: 'Services', parent: BottomNavHome.name),
          _i5.RouteConfig(ProfileRouter.name,
              path: 'Profile', parent: BottomNavHome.name)
        ])
      ];
}

/// generated route for
/// [_i1.BottomNavHome]
class BottomNavHome extends _i5.PageRouteInfo<void> {
  const BottomNavHome({List<_i5.PageRouteInfo>? children})
      : super(BottomNavHome.name, path: '/', initialChildren: children);

  static const String name = 'BottomNavHome';
}

/// generated route for
/// [_i2.HomePage]
class HomeRouter extends _i5.PageRouteInfo<void> {
  const HomeRouter() : super(HomeRouter.name, path: 'home-page');

  static const String name = 'HomeRouter';
}

/// generated route for
/// [_i3.Services]
class ServicesRouter extends _i5.PageRouteInfo<void> {
  const ServicesRouter() : super(ServicesRouter.name, path: 'Services');

  static const String name = 'ServicesRouter';
}

/// generated route for
/// [_i4.Profile]
class ProfileRouter extends _i5.PageRouteInfo<void> {
  const ProfileRouter() : super(ProfileRouter.name, path: 'Profile');

  static const String name = 'ProfileRouter';
}
