import 'package:clinaj/app/features/splash_screen/presentation/bindings/splash_binding.dart';
import 'package:clinaj/app/features/splash_screen/presentation/pages/splash_screen_page.dart';
import 'package:clinaj/app/routes/app_pages.dart';
import 'package:clinaj/app/theme/app_theme.dart';
import 'package:clinaj/app/translations/app_translations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.initial, //Rota inicial
      initialBinding: SplashBinding(), // dependencias iniciais
      theme: ClinajAppTheme.light(), //Tema personalizado app
      defaultTransition: Transition.fade, // Transição de telas padrão
      getPages: AppPages
          .pages, // Seu array de navegação contendo as rotas e suas pages
      home: SplashScreenPage(), // Page inicial
      locale: const Locale('en', 'US'), // Língua padrão
      navigatorObservers: [FlutterSmartDialog.observer],
      translationsKeys:
          AppTranslation.translations, // Suas chaves contendo as traduções<map>
      builder: FlutterSmartDialog.init(
          //default toast widget
          //default loading widget
          //loadingBuilder: (String msg) => CustomSimpleLoadingIndicator(loadingMessage: 'loadingMessage'),
          ),
    );
  }
}
