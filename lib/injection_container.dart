import 'package:flscrcpy/core/data/local/cache.dart';
import 'package:flscrcpy/core/data/local/config.dart';
import 'package:flscrcpy/core/data/local/theme_mode_config.dart';
import 'package:flscrcpy/core/env.dart';
import 'package:flscrcpy/core/network/network.dart';
import 'package:flscrcpy/core/presentation/theme/theme_mode_cubit.dart';
import 'package:flscrcpy/core/process/exec_command.dart';
import 'package:flscrcpy/features/screen_mirroring/data/local/data_sources/scrcpy_local_data_source.dart';
import 'package:flscrcpy/features/screen_mirroring/data/local/models/device_mirroring_model.dart';
import 'package:flscrcpy/features/screen_mirroring/domain/repositories/screen_mirrorring_repository.dart';
import 'package:flscrcpy/features/screen_mirroring/domain/use_cases/get_mirroring_logs.dart';
import 'package:flscrcpy/features/screen_mirroring/domain/use_cases/get_scrcpy_info.dart';
import 'package:flscrcpy/features/screen_mirroring/domain/use_cases/list_connected_devices.dart';
import 'package:flscrcpy/features/screen_mirroring/domain/use_cases/start_mirroring.dart';
import 'package:flscrcpy/features/screen_mirroring/domain/use_cases/stop_mirroring.dart';
import 'package:flscrcpy/features/screen_mirroring/presentation/bloc/devices/devices_bloc.dart';
import 'package:flscrcpy/features/screen_mirroring/presentation/bloc/executable_info/executable_info_bloc.dart';
import 'package:flscrcpy/features/screen_mirroring/presentation/bloc/mirroring/mirroring_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

import 'features/screen_mirroring/data/local/data_sources/adb_local_data_source.dart';
import 'features/screen_mirroring/data/repositories/screen_mirroring_repository_impl.dart';

final getIt = GetIt.instance;

void setup() {
  // env
  getIt.registerSingleton<Env>(EnvImpl());

  // network
  getIt.registerLazySingleton<http.Client>(() => http.Client());
  getIt.registerLazySingleton<Network>(() => NetworkImpl(getIt()));

  // shared preferences
  getIt.registerSingletonAsync<SharedPreferences>(
    () async {
      final prefs = await SharedPreferences.getInstance();
      return prefs;
    },
  );

  // configs
  getIt.registerSingletonWithDependencies<Config<ThemeMode>>(
    () => ThemeModeConfig(sharedPreferences: getIt()),
    dependsOn: [SharedPreferences],
  );

  // data sources
  getIt.registerLazySingleton<ScrcpyLocalDataSource>(
    () => ScrcpyLocalDataSourceImpl(
      execCommand: getIt(),
      mirroringCache: getIt(),
    ),
  );
  getIt.registerLazySingleton<AdbLocalDataSource>(
    () => AdbLocalDataSourceImpl(getIt()),
  );

  // repositories
  getIt.registerLazySingleton<ScreenMirroringRepository>(
    () => ScreenMirroringRepositoryImpl(
      adbLocalDataSource: getIt(),
      scrcpyLocalDataSource: getIt(),
    ),
  );

  // use cases
  getIt.registerLazySingleton<GetScrcpyInfo>(
    () => GetScrcpyInfo(getIt()),
  );
  getIt.registerLazySingleton<ListConnectedDevices>(
    () => ListConnectedDevices(getIt()),
  );
  getIt.registerLazySingleton<StartMirroring>(
    () => StartMirroring(getIt()),
  );
  getIt.registerLazySingleton<StopMirroring>(
    () => StopMirroring(getIt()),
  );
  getIt.registerLazySingleton<GetMirroringLogs>(
    () => GetMirroringLogs(getIt()),
  );

  // blocs
  getIt.registerSingletonAsync<ThemeModeCubit>(
    () async {
      final initialThemeMode = await getIt<Config<ThemeMode>>().get();
      return ThemeModeCubit(
        themeModeConfig: getIt(),
        initialThemeMode: initialThemeMode,
      );
    },
    dependsOn: [SharedPreferences, Config<ThemeMode>],
  );
  getIt.registerFactory<ExecutableInfoBloc>(
    () => ExecutableInfoBloc(
      getScrcpyInfo: getIt(),
    ),
  );
  getIt.registerFactory<DevicesBloc>(
    () => DevicesBloc(
      listConnectedDevices: getIt(),
    ),
  );
  getIt.registerFactory<MirroringBloc>(
    () => MirroringBloc(
      startMirroring: getIt(),
      stopMirroring: getIt(),
    ),
  );

  // caches
  getIt.registerLazySingleton<Cache<String, DeviceMirroringModel>>(
    () => MemoryCache<String, DeviceMirroringModel>(),
  );

  // other
  getIt.registerFactory<ExecCommand>(() => ExecCommandImpl());
}

List<BlocProvider> get blocProviders => [
      BlocProvider<ThemeModeCubit>(
        create: (context) => getIt(),
      ),
      BlocProvider<ExecutableInfoBloc>(
        create: (context) => getIt(),
      ),
      BlocProvider<DevicesBloc>(
        create: (context) => getIt(),
      ),
      BlocProvider<MirroringBloc>(
        create: (context) => getIt(),
      ),
    ];
