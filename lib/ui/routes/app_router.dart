import 'package:auto_route/auto_route.dart';
import 'package:flutter_example_riverpod/ui/pages/home/home_page.dart';
import 'package:flutter_example_riverpod/ui/pages/posts/post_page.dart';
import 'package:flutter_example_riverpod/ui/pages/profile/profile_page.dart';
import 'package:flutter_example_riverpod/ui/pages/register/register_page.dart';
import 'package:flutter_example_riverpod/ui/pages/settings/settings_page.dart';

import '../pages/login/login_page.dart';
import '../pages/splash/splash_page.dart';
part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: SplashRoute.page, initial: true),
        AutoRoute(path: '/login', page: LoginRoute.page),
        AutoRoute(path: '/register', page: RegisterRoute.page),
        AutoRoute(path: '/home', page: HomeRoute.page, children: [
          RedirectRoute(path: '', redirectTo: 'posts'),
          AutoRoute(path: 'posts', page: PostRoute.page),
          AutoRoute(path: 'settings', page: SettingsRoute.page),
          AutoRoute(path: 'profile', page: ProfileRoute.page),
        ])
      ];
}
