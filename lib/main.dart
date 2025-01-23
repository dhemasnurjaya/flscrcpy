import 'package:flscrcpy/core/presentation/bloc/app_bloc_observer.dart';
import 'package:flscrcpy/core/presentation/router/app_router.dart';
import 'package:flscrcpy/core/presentation/theme/app_theme.dart';
import 'package:flscrcpy/core/presentation/theme/theme_mode_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:window_manager/window_manager.dart';

import 'injection_container.dart' as ic;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await windowManager.ensureInitialized();

  const windowSize = Size(450, 800);
  WindowOptions windowOptions = WindowOptions(
    size: windowSize,
    minimumSize: windowSize,
    maximumSize: windowSize,
    center: false,
    backgroundColor: Colors.transparent,
    skipTaskbar: false,
    titleBarStyle: TitleBarStyle.normal,
  );
  windowManager.waitUntilReadyToShow(windowOptions, () async {
    await windowManager.show();
    await windowManager.focus();
  });

  // dependency injection setup
  ic.setup();
  await ic.getIt.allReady();

  // register bloc observer
  Bloc.observer = AppBlocObserver();

  runApp(MirroringApp());
}

class MirroringApp extends StatelessWidget {
  MirroringApp({super.key});

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: ic.blocProviders,
      child: BlocBuilder<ThemeModeCubit, ThemeMode>(
        builder: (context, state) {
          return MaterialApp.router(
            debugShowCheckedModeBanner: false,
            title: 'Mirroring App',
            theme: lightTheme,
            darkTheme: darkTheme,
            themeMode: state,
            routerConfig: _appRouter.config(),
          );
        },
      ),
    );
  }
}
