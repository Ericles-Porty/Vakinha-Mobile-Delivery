import 'package:get/get.dart';
import 'package:vakinha/app/modules/splash/splash_page.dart';

class SplashRouters {
  SplashRouters._();

  static final router = <GetPage>[
    GetPage(
      name: '/',
      page: () => const SplashPage(),
    )
  ];
}
