part of 'route_importer.dart';

@AutoRouterConfig(replaceInRouteName: "router")
class AppRouter extends $AppRouter {
  // CustomRoute for transitions
  @override
  RouteType get defaultRouteType => const RouteType.custom();

  @override
  List<CustomRoute> get routes => [
        /// routes go here
        CustomRoute(
          page: SplashScreenRoute.page,
          initial: true,
          path: "/",
          transitionsBuilder: (context, animation, secondaryAnimation, child) =>
              FadeTransition(
            opacity: animation,
            child: child,
          ),
        ),
        CustomRoute(
            page: HomePageRoute.page,
            transitionsBuilder: TransitionsBuilders.slideBottom),
        // CustomRoute(page: HomeScreenRoute.page,transitionsBuilder: (context, animation, secondaryAnimation, child) => FadeTransition(opacity: animation, child: child,),),
      ];
}
