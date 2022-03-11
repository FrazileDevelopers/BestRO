// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i12;
import 'package:bestro/pages/address/address.dart' as _i7;
import 'package:bestro/pages/bottomNavHome/bottomNavHome.dart' as _i2;
import 'package:bestro/pages/home/home.dart' as _i9;
import 'package:bestro/pages/login/login.dart' as _i3;
import 'package:bestro/pages/otp/otp.dart' as _i4;
import 'package:bestro/pages/profile/editProfile.dart' as _i6;
import 'package:bestro/pages/profile/profile.dart' as _i11;
import 'package:bestro/pages/ratelist/ratelist.dart' as _i8;
import 'package:bestro/pages/services/serviceDetail.dart' as _i5;
import 'package:bestro/pages/services/services.dart' as _i10;
import 'package:bestro/pages/splash/splash.dart' as _i1;
import 'package:flutter/material.dart' as _i13;

class BestRoRouter extends _i12.RootStackRouter {
  BestRoRouter([_i13.GlobalKey<_i13.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i12.PageFactory> pagesMap = {
    SplashRouter.name: (routeData) {
      return _i12.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i1.Splash());
    },
    BottomNavHomeRouter.name: (routeData) {
      return _i12.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i2.BottomNavHome());
    },
    LoginRouter.name: (routeData) {
      return _i12.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i3.Login());
    },
    OtpRouter.name: (routeData) {
      return _i12.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i4.Otp());
    },
    ServiceDetailsRouter.name: (routeData) {
      return _i12.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i5.ServiceDetails());
    },
    EditProfileRouter.name: (routeData) {
      return _i12.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i6.EditProfile());
    },
    AddressRouter.name: (routeData) {
      return _i12.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i7.ManageAddress());
    },
    RateListRouter.name: (routeData) {
      return _i12.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i8.RateList());
    },
    HomeRouter.name: (routeData) {
      return _i12.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i9.HomePage());
    },
    ServicesRouter.name: (routeData) {
      return _i12.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i10.Services());
    },
    ProfileRouter.name: (routeData) {
      return _i12.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i11.Profile());
    }
  };

  @override
  List<_i12.RouteConfig> get routes => [
        _i12.RouteConfig(SplashRouter.name, path: '/'),
        _i12.RouteConfig(BottomNavHomeRouter.name,
            path: '/bottom-nav-home',
            children: [
              _i12.RouteConfig(HomeRouter.name,
                  path: 'home-page', parent: BottomNavHomeRouter.name),
              _i12.RouteConfig(ServicesRouter.name,
                  path: 'Services', parent: BottomNavHomeRouter.name),
              _i12.RouteConfig(ProfileRouter.name,
                  path: 'Profile', parent: BottomNavHomeRouter.name)
            ]),
        _i12.RouteConfig(LoginRouter.name, path: '/Login'),
        _i12.RouteConfig(OtpRouter.name, path: '/Otp'),
        _i12.RouteConfig(ServiceDetailsRouter.name, path: '/service-details'),
        _i12.RouteConfig(EditProfileRouter.name, path: '/edit-profile'),
        _i12.RouteConfig(AddressRouter.name, path: '/manage-address'),
        _i12.RouteConfig(RateListRouter.name, path: '/rate-list')
      ];
}

/// generated route for
/// [_i1.Splash]
class SplashRouter extends _i12.PageRouteInfo<void> {
  const SplashRouter() : super(SplashRouter.name, path: '/');

  static const String name = 'SplashRouter';
}

/// generated route for
/// [_i2.BottomNavHome]
class BottomNavHomeRouter extends _i12.PageRouteInfo<void> {
  const BottomNavHomeRouter({List<_i12.PageRouteInfo>? children})
      : super(BottomNavHomeRouter.name,
            path: '/bottom-nav-home', initialChildren: children);

  static const String name = 'BottomNavHomeRouter';
}

/// generated route for
/// [_i3.Login]
class LoginRouter extends _i12.PageRouteInfo<void> {
  const LoginRouter() : super(LoginRouter.name, path: '/Login');

  static const String name = 'LoginRouter';
}

/// generated route for
/// [_i4.Otp]
class OtpRouter extends _i12.PageRouteInfo<void> {
  const OtpRouter() : super(OtpRouter.name, path: '/Otp');

  static const String name = 'OtpRouter';
}

/// generated route for
/// [_i5.ServiceDetails]
class ServiceDetailsRouter extends _i12.PageRouteInfo<void> {
  const ServiceDetailsRouter()
      : super(ServiceDetailsRouter.name, path: '/service-details');

  static const String name = 'ServiceDetailsRouter';
}

/// generated route for
/// [_i6.EditProfile]
class EditProfileRouter extends _i12.PageRouteInfo<void> {
  const EditProfileRouter()
      : super(EditProfileRouter.name, path: '/edit-profile');

  static const String name = 'EditProfileRouter';
}

/// generated route for
/// [_i7.ManageAddress]
class AddressRouter extends _i12.PageRouteInfo<void> {
  const AddressRouter() : super(AddressRouter.name, path: '/manage-address');

  static const String name = 'AddressRouter';
}

/// generated route for
/// [_i8.RateList]
class RateListRouter extends _i12.PageRouteInfo<void> {
  const RateListRouter() : super(RateListRouter.name, path: '/rate-list');

  static const String name = 'RateListRouter';
}

/// generated route for
/// [_i9.HomePage]
class HomeRouter extends _i12.PageRouteInfo<void> {
  const HomeRouter() : super(HomeRouter.name, path: 'home-page');

  static const String name = 'HomeRouter';
}

/// generated route for
/// [_i10.Services]
class ServicesRouter extends _i12.PageRouteInfo<void> {
  const ServicesRouter() : super(ServicesRouter.name, path: 'Services');

  static const String name = 'ServicesRouter';
}

/// generated route for
/// [_i11.Profile]
class ProfileRouter extends _i12.PageRouteInfo<void> {
  const ProfileRouter() : super(ProfileRouter.name, path: 'Profile');

  static const String name = 'ProfileRouter';
}
