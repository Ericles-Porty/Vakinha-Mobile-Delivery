import 'package:get/get.dart';
import 'package:vakinha/app/repositories/auth/auth_repository.dart';

class RegisterController extends GetxController {
  final AuthRepository _authRepository;

  RegisterController({
    required AuthRepository authRepository,
  }) : _authRepository = authRepository;

}
