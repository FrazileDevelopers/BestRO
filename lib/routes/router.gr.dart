// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i6;
import 'package:bestro/pages/bottomNavHome/bottomNavHome.dart' as _i2;
import 'package:bestro/pages/home/home.dart' as _i3;
import 'package:bestro/pages/profile/profile.dart' as _i5;
import 'package:bestro/pages/services/services.dart' as _i4;
import 'package:bestro/pages/splash/spalsh.dart' as _i1;
import 'package:flutter/material.dart' as _i7;

class BestRoRouter extends _i6.RootStackRouter {
  BestRoRouter([_i7.GlobalKey<_i7.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i6.PageFactory> pagesMap = {
    Splash.name: (routeData) {
      return _i6.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i1.Splash());
    },
    BottomNavHome.name: (routeData) {
      return _i6.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i2.BottomNavHome());
    },
    HomeRouter.name: (routeData) {
      return _i6.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i3.HomePage());
    },
    ServicesRouter.name: (routeData) {
      return _i6.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i4.Services());
    },
    ProfileRouter.name: (routeData) {
      return _i6.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i5.Profile());
    }
  };

  @override
  List<_i6.RouteConfig> get routes => [
        _i6.RouteConfig(Splash.name, path: '/'),
        _i6.RouteConfig(BottomNavHome.name,
            path: '/bottom-nav-home',
            children: [
              _i6.RouteConfig(HomeRouter.name,
                  path: 'home-page', parent: BottomNavHome.name),
              _i6.RouteConfig(ServicesRouter.name,
                  path: 'Services', parent: BottomNavHome.name),
              _i6.RouteConfig(ProfileRouter.name,
                  path: 'Profile', parent: BottomNavHome.name)
            ])
      ];
}

/// generated route for
/// [_i1.Splash]
class Splash extends _i6.PageRouteInfo<void> {
  const Splash() : super(Splash.name, path: '/');

  static const String name = 'Splash';
}

/// generated route for
/// [_i2.BottomNavHome]
class BottomNavHome extends _i6.PageRouteInfo<void> {
  const BottomNavHome({List<_i6.PageRouteInfo>? children})
      : super(BottomNavHome.name,
            path: '/bottom-nav-home', initialChildren: children);

  static const String name = 'BottomNavHome';
}

/// generated route for
/// [_i3.HomePage]
class HomeRouter extends _i6.PageRouteInfo<void> {
  const HomeRouter() : super(HomeRouter.name, path: 'home-page');

  static const String name = 'HomeRouter';
}

/// generated route for
/// [_i4.Services]
class ServicesRouter extends _i6.PageRouteInfo<void> {
  const ServicesRouter() : super(ServicesRouter.name, path: 'Services');

  static const String name = 'ServicesRouter';
}

/// generated route for
/// [_i5.Profile]
class ProfileRouter extends _i6.PageRouteInfo<void> {
  const ProfileRouter() : super(ProfileRouter.name, path: 'Profile');

  static const String name = 'ProfileRouter';
}
