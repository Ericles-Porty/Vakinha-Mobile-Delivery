import 'package:get/get.dart';
import 'package:vakinha/app/core/rest_client/rest_client.dart';

class ApplicationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
      () => RestClient(),
      fenix: true,
    );
  }
}
