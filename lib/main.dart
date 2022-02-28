import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:vakinha/app/core/bindings/application_binding.dart';
import 'package:vakinha/app/core/ui/vakinha_ui.dart';
import 'package:vakinha/app/routes/auth_routers.dart';
import 'package:vakinha/app/routes/splash_routers.dart';

void main() {
  runApp(const VakinhaBurgerMainApp());
}

class VakinhaBurgerMainApp extends StatelessWidget {
  const VakinhaBurgerMainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: ApplicationBinding(),
      title: 'Vakinha Burger',
      theme: VakinhaUI.theme,
      debugShowCheckedModeBanner: false,
      getPages: [
        ...SplashRouters.router,
        ...AuthRouters.routers,
      ],
    );
  }
}
