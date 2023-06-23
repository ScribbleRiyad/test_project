// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i4;
import 'package:flutter/material.dart' as _i5;
import 'package:test_project/app/Presentation/Home/home_screen.dart' as _i1;
import 'package:test_project/app/Presentation/Splash/splash_screen.dart' as _i2;
import 'package:test_project/app/Presentation/User/user.dart' as _i3;

abstract class $AppRouter extends _i4.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    HomePageRoute.name: (routeData) {
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.HomePage(),
      );
    },
    SplashScreenRoute.name: (routeData) {
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.SplashScreen(),
      );
    },
    UserPageRoute.name: (routeData) {
      final args = routeData.argsAs<UserPageRouteArgs>();
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i3.UserPage(
          key: args.key,
          userData: args.userData,
        ),
      );
    },
  };
}

/// generated route for
/// [_i1.HomePage]
class HomePageRoute extends _i4.PageRouteInfo<void> {
  const HomePageRoute({List<_i4.PageRouteInfo>? children})
      : super(
          HomePageRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomePageRoute';

  static const _i4.PageInfo<void> page = _i4.PageInfo<void>(name);
}

/// generated route for
/// [_i2.SplashScreen]
class SplashScreenRoute extends _i4.PageRouteInfo<void> {
  const SplashScreenRoute({List<_i4.PageRouteInfo>? children})
      : super(
          SplashScreenRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashScreenRoute';

  static const _i4.PageInfo<void> page = _i4.PageInfo<void>(name);
}

/// generated route for
/// [_i3.UserPage]
class UserPageRoute extends _i4.PageRouteInfo<UserPageRouteArgs> {
  UserPageRoute({
    _i5.Key? key,
    required dynamic userData,
    List<_i4.PageRouteInfo>? children,
  }) : super(
          UserPageRoute.name,
          args: UserPageRouteArgs(
            key: key,
            userData: userData,
          ),
          initialChildren: children,
        );

  static const String name = 'UserPageRoute';

  static const _i4.PageInfo<UserPageRouteArgs> page =
      _i4.PageInfo<UserPageRouteArgs>(name);
}

class UserPageRouteArgs {
  const UserPageRouteArgs({
    this.key,
    required this.userData,
  });

  final _i5.Key? key;

  final dynamic userData;

  @override
  String toString() {
    return 'UserPageRouteArgs{key: $key, userData: $userData}';
  }
}
