import 'package:courses_app/features/base/cubit/navigation_cubit.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'const/resources/theme_manager.dart';


import 'core/services/routes/routes.dart';
import 'features/base/view.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => NavigationCubit(),
        )
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
        home: const BaseView(),
      ),
    );
  }
}
