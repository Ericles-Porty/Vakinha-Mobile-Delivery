import 'package:get/get.dart';
import 'package:vakinha/app/modules/auth/login/login_page.dart';
import 'package:vakinha/app/modules/auth/register/register_bindings.dart';
import 'package:vakinha/app/modules/auth/register/register_page.dart';

class AuthRouters {
  AuthRouters._();

  static final routers = <GetPage>[
    GetPage(
      name: '/auth/login',
      page: () => const LoginPage(),
    ),
    GetPage(
      name: '/auth/register',
      binding: RegisterBindings(),
      page: () => const RegisterPage(),
    ),
  ];
}
