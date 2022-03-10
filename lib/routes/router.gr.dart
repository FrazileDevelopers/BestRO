// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i10;
import 'package:bestro/pages/bottomNavHome/bottomNavHome.dart' as _i2;
import 'package:bestro/pages/home/home.dart' as _i7;
import 'package:bestro/pages/login/login.dart' as _i3;
import 'package:bestro/pages/otp/otp.dart' as _i4;
import 'package:bestro/pages/profile/editProfile.dart' as _i6;
import 'package:bestro/pages/profile/profile.dart' as _i9;
import 'package:bestro/pages/services/serviceDetail.dart' as _i5;
import 'package:bestro/pages/services/services.dart' as _i8;
import 'package:bestro/pages/splash/splash.dart' as _i1;
import 'package:flutter/material.dart' as _i11;

class BestRoRouter extends _i10.RootStackRouter {
  BestRoRouter([_i11.GlobalKey<_i11.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i10.PageFactory> pagesMap = {
    Splash.name: (routeData) {
      return _i10.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i1.Splash());
    },
    BottomNavHome.name: (routeData) {
      return _i10.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i2.BottomNavHome());
    },
    Login.name: (routeData) {
      return _i10.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i3.Login());
    },
    Otp.name: (routeData) {
      return _i10.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i4.Otp());
    },
    ServiceDetails.name: (routeData) {
      return _i10.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i5.ServiceDetails());
    },
    EditProfile.name: (routeData) {
      return _i10.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i6.EditProfile());
    },
    HomeRouter.name: (routeData) {
      return _i10.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i7.HomePage());
    },
    ServicesRouter.name: (routeData) {
      return _i10.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i8.Services());
    },
    ProfileRouter.name: (routeData) {
      return _i10.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i9.Profile());
    }
  };

  @override
  List<_i10.RouteConfig> get routes => [
        _i10.RouteConfig(Splash.name, path: '/'),
        _i10.RouteConfig(BottomNavHome.name,
            path: '/bottom-nav-home',
            children: [
              _i10.RouteConfig(HomeRouter.name,
                  path: 'home-page', parent: BottomNavHome.name),
              _i10.RouteConfig(ServicesRouter.name,
                  path: 'Services', parent: BottomNavHome.name),
              _i10.RouteConfig(ProfileRouter.name,
                  path: 'Profile', parent: BottomNavHome.name)
            ]),
        _i10.RouteConfig(Login.name, path: '/Login'),
        _i10.RouteConfig(Otp.name, path: '/Otp'),
        _i10.RouteConfig(ServiceDetails.name, path: '/service-details'),
        _i10.RouteConfig(EditProfile.name, path: '/edit-profile')
      ];
}

/// generated route for
/// [_i1.Splash]
class Splash extends _i10.PageRouteInfo<void> {
  const Splash() : super(Splash.name, path: '/');

  static const String name = 'Splash';
}

/// generated route for
/// [_i2.BottomNavHome]
class BottomNavHome extends _i10.PageRouteInfo<void> {
  const BottomNavHome({List<_i10.PageRouteInfo>? children})
      : super(BottomNavHome.name,
            path: '/bottom-nav-home', initialChildren: children);

  static const String name = 'BottomNavHome';
}

/// generated route for
/// [_i3.Login]
class Login extends _i10.PageRouteInfo<void> {
  const Login() : super(Login.name, path: '/Login');

  static const String name = 'Login';
}

/// generated route for
/// [_i4.Otp]
class Otp extends _i10.PageRouteInfo<void> {
  const Otp() : super(Otp.name, path: '/Otp');

  static const String name = 'Otp';
}

/// generated route for
/// [_i5.ServiceDetails]
class ServiceDetails extends _i10.PageRouteInfo<void> {
  const ServiceDetails() : super(ServiceDetails.name, path: '/service-details');

  static const String name = 'ServiceDetails';
}

/// generated route for
/// [_i6.EditProfile]
class EditProfile extends _i10.PageRouteInfo<void> {
  const EditProfile() : super(EditProfile.name, path: '/edit-profile');

  static const String name = 'EditProfile';
}

/// generated route for
/// [_i7.HomePage]
class HomeRouter extends _i10.PageRouteInfo<void> {
  const HomeRouter() : super(HomeRouter.name, path: 'home-page');

  static const String name = 'HomeRouter';
}

/// generated route for
/// [_i8.Services]
class ServicesRouter extends _i10.PageRouteInfo<void> {
  const ServicesRouter() : super(ServicesRouter.name, path: 'Services');

  static const String name = 'ServicesRouter';
}

/// generated route for
/// [_i9.Profile]
class ProfileRouter extends _i10.PageRouteInfo<void> {
  const ProfileRouter() : super(ProfileRouter.name, path: 'Profile');

  static const String name = 'ProfileRouter';
}
