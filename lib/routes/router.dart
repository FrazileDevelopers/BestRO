import 'package:auto_route/auto_route.dart';
import 'package:bestro/pages/address/address.dart';
import 'package:bestro/pages/otp/otp.dart';
import 'package:bestro/pages/profile/editProfile.dart';
import 'package:bestro/pages/profile/profile.dart';
import 'package:bestro/pages/services/serviceDetail.dart';
import 'package:bestro/pages/splash/splash.dart';

import '../pages/bottomNavHome/bottomNavHome.dart';
import '../pages/home/home.dart';
import '../pages/login/login.dart';
import '../pages/ratelist/ratelist.dart';
import '../pages/services/services.dart';

@AdaptiveAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: Splash, name: 'SplashRouter', initial: true),
    AutoRoute(
      page: BottomNavHome,
      name: 'BottomNavHomeRouter',
      children: [
        AutoRoute(page: HomePage, name: 'HomeRouter'),
        AutoRoute(page: Services, name: 'ServicesRouter'),
        AutoRoute(page: Profile, name: 'ProfileRouter'),
      ],
    ),
    AutoRoute(page: Login, name: 'LoginRouter'),
    AutoRoute(page: Otp, name: 'OtpRouter'),
    AutoRoute(page: ServiceDetails, name: 'ServiceDetailsRouter'),
    AutoRoute(page: EditProfile, name: 'EditProfileRouter'),
    AutoRoute(page: ManageAddress, name: 'AddressRouter'),
    AutoRoute(page: RateList, name: 'RateListRouter'),
  ],
)
// extend the generated private router
class $BestRoRouter {}
