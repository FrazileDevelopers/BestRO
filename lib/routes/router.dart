import 'package:auto_route/auto_route.dart';
import 'package:bestro/pages/otp/otp.dart';
import 'package:bestro/pages/profile/editProfile.dart';
import 'package:bestro/pages/profile/profile.dart';
import 'package:bestro/pages/services/serviceDetail.dart';
import 'package:bestro/pages/splash/splash.dart';

import '../pages/bottomNavHome/bottomNavHome.dart';
import '../pages/home/home.dart';
import '../pages/login/login.dart';
import '../pages/services/services.dart';

@AdaptiveAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: Splash, initial: true),
    AutoRoute(
      page: BottomNavHome,
      children: [
        AutoRoute(page: HomePage, name: 'HomeRouter'),
        AutoRoute(page: Services, name: 'ServicesRouter'),
        AutoRoute(page: Profile, name: 'ProfileRouter'),
      ],
    ),
    AutoRoute(page: Login),
    AutoRoute(page: Otp),
    AutoRoute(page: ServiceDetails),
    AutoRoute(page: EditProfile),
  ],
)
// extend the generated private router
class $BestRoRouter {}
