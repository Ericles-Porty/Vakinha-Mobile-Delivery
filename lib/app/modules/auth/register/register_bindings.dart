import 'package:get/get.dart';
import 'package:vakinha/app/modules/auth/register/register_controller.dart';
import 'package:vakinha/app/repositories/auth/auth_repository_impl.dart';

import '../../../repositories/auth/auth_repository.dart';

class RegisterBindings extends Bindings {

  @override
  void dependencies() {
    Get.lazyPut<AuthRepository>(
      () => AuthRepositoryImpl(restClient: Get.find()),
    );

    Get.lazyPut(
      () => RegisterController(authRepository: Get.find()),
    );

  }
}
