import 'package:flutter/services.dart';

abstract class ServiceInitializer {
  ServiceInitializer._();

  initializeSettings() async {
    List futures = [
      // await initializeLocalization(),
      await initializeUserData(),
      await initializeScreensOrientation(),
      // await initializeStatusBarColor(),
    ];
    List<dynamic> result = await Future.wait([
      ...futures,
    ]);
    return result;
  }

  // initializeLocalization() async {
  //   return serviceLocator<LanguageService>().loadLanguage();
  // }

  initializeUserData() async {
    // UserModel.user = await LocalStorage.getUser() ?? UserModel();
  }

  initializeScreensOrientation() async {
    await SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp],
    );
  }

  // initializeStatusBarColor() async {
  //   SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
  //     statusBarColor: AppColor.transparent,
  //     statusBarIconBrightness: Brightness.dark,
  //     statusBarBrightness: Brightness.light,
  //   ));
  // }
}
