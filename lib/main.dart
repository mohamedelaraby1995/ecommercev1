import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mooolatopensource/bindings/intialbindings.dart';
import 'package:mooolatopensource/core/localization/changelocal.dart';
import 'package:mooolatopensource/core/localization/translation.dart';
import 'package:mooolatopensource/core/services/services.dart';
import 'package:mooolatopensource/routes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialServices();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    LocaleController controller = Get.put(LocaleController());
    return GetMaterialApp(
      translations: MyTranslation(),
      debugShowCheckedModeBanner: false,
      title: 'Ecommerce Course',
      locale: controller.language,
      theme: controller.appTheme,
      initialBinding: InitialBindings(),
      // routes: routes,
      getPages: routes,
    );
  }
}
