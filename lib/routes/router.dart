import 'package:auto_route/auto_route.dart';
import 'package:bestro/pages/profile/profile.dart';

import '../pages/bottomNavHome/bottomNavHome.dart';
import '../pages/home/home.dart';
import '../pages/services/services.dart';

@AdaptiveAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(
        page: BottomNavHome,
        children: [
          AutoRoute(page: HomePage, name: 'HomeRouter'),
          AutoRoute(page: Services, name: 'ServicesRouter'),
          AutoRoute(page: Profile, name: 'ProfileRouter'),
        ],
        initial: true),
  ],
)
// extend the generated private router
class $BestRoRouter {}
