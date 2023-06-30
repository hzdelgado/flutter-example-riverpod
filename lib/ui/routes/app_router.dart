import 'package:auto_route/auto_route.dart';

import '../pages/login/login_page.dart';
import '../pages/splash/splash_page.dart';
part 'app_router.gr.dart';

@AutoRouterConfig()      
class AppRouter extends _$AppRouter {      
   
 @override      
 List<AutoRoute> get routes => [      
    AutoRoute(page: SplashRoute.page, initial: true),
    AutoRoute(path: '/login', page: LoginRoute.page)
  ];    
}    