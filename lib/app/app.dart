import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'config/routes/magic_router.dart';
import 'core/utils/theme_manager.dart';
class CoursesApp extends StatelessWidget {
  const CoursesApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers:const [
        // BlocProvider(
        //   create: (context) => NavigationCubit(),
        // )
      ],
      child: MaterialApp(
        // builder: (context, child) => SafeArea(child: child!),
        debugShowCheckedModeBanner: false,
        theme: getApplicationTheme(),
        navigatorKey: navigatorKey,
        onGenerateRoute: onGenerateRoute,
        localizationsDelegates: const [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate
        ],
        supportedLocales: const [Locale('ar', 'AE')],
        home:  PageView(),
      ),
    );
  }
}
