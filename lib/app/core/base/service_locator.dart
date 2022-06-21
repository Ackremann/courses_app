// import 'package:get_it/get_it.dart';
// import 'package:internet_connection_checker/internet_connection_checker.dart';

// import '../../features/auth/bloc/auth_bloc.dart';


// final serviceLocator = GetIt.instance;

// Future<void> initDI() async {
//   // general
//   // serviceLocator.registerLazySingleton<FlutterSecureStorage>(() =>
//   //     const FlutterSecureStorage(
//   //         aOptions: AndroidOptions(encryptedSharedPreferences: true)));
//   serviceLocator.registerLazySingleton<InternetConnectionChecker>(
//       () => InternetConnectionChecker());

//   // services
//   // serviceLocator.registerLazySingleton<NetworkService>(
//   //         () => NetworkServiceImpl(serviceLocator()));
//   // serviceLocator.registerLazySingleton<ExecutorService>(() =>
//   //     ExecutorServiceImpl(
//   //         networkService: serviceLocator(),
//   //         navigationService: serviceLocator()));
//   // serviceLocator.registerLazySingleton<CacheService>(
//   //     () => CacheServiceImpl(serviceLocator()));
//   // serviceLocator
//   //     .registerLazySingleton<LanguageService>(() => LanguageServiceImpl());
//   // serviceLocator
//   //     .registerLazySingleton<PermissionService>(() => PermissionServiceImpl());
//   // serviceLocator
//   //     .registerLazySingleton<NavigationService>(() => NavigationServiceImpl());

//   // // repos
//   // serviceLocator.registerLazySingleton<AuthRepository>(
//   //     () => AuthService(serviceLocator()));

//   // // cubits
//   // serviceLocator.registerLazySingleton<BoardingCubit>(() => BoardingCubit());
//   serviceLocator
//       .registerLazySingleton<AuthBloc>(() => AuthBloc( authRepository: serviceLocator()));
//   // serviceLocator.registerLazySingleton<RootCubit>(() => RootCubit());
// }
