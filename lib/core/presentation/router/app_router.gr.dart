// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i4;
import 'package:flscrcpy/features/app_settings/presentation/app_settings_page.dart'
    as _i1;
import 'package:flscrcpy/features/screen_mirroring/presentation/pages/dashboard_page.dart'
    as _i2;
import 'package:flscrcpy/features/screen_mirroring/presentation/pages/mirroring_device_log_page.dart'
    as _i3;
import 'package:flutter/material.dart' as _i5;

/// generated route for
/// [_i1.AppSettingsPage]
class AppSettingsRoute extends _i4.PageRouteInfo<void> {
  const AppSettingsRoute({List<_i4.PageRouteInfo>? children})
      : super(AppSettingsRoute.name, initialChildren: children);

  static const String name = 'AppSettingsRoute';

  static _i4.PageInfo page = _i4.PageInfo(
    name,
    builder: (data) {
      return const _i1.AppSettingsPage();
    },
  );
}

/// generated route for
/// [_i2.DashboardPage]
class DashboardRoute extends _i4.PageRouteInfo<void> {
  const DashboardRoute({List<_i4.PageRouteInfo>? children})
      : super(DashboardRoute.name, initialChildren: children);

  static const String name = 'DashboardRoute';

  static _i4.PageInfo page = _i4.PageInfo(
    name,
    builder: (data) {
      return const _i2.DashboardPage();
    },
  );
}

/// generated route for
/// [_i3.MirroringDeviceLogPage]
class MirroringDeviceLogRoute
    extends _i4.PageRouteInfo<MirroringDeviceLogRouteArgs> {
  MirroringDeviceLogRoute({
    required List<String> mirroringLogs,
    _i5.Key? key,
    List<_i4.PageRouteInfo>? children,
  }) : super(
          MirroringDeviceLogRoute.name,
          args: MirroringDeviceLogRouteArgs(
            mirroringLogs: mirroringLogs,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'MirroringDeviceLogRoute';

  static _i4.PageInfo page = _i4.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<MirroringDeviceLogRouteArgs>();
      return _i3.MirroringDeviceLogPage(args.mirroringLogs, key: args.key);
    },
  );
}

class MirroringDeviceLogRouteArgs {
  const MirroringDeviceLogRouteArgs({required this.mirroringLogs, this.key});

  final List<String> mirroringLogs;

  final _i5.Key? key;

  @override
  String toString() {
    return 'MirroringDeviceLogRouteArgs{mirroringLogs: $mirroringLogs, key: $key}';
  }
}
