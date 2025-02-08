import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flscrcpy/core/presentation/router/app_router.gr.dart';
import 'package:flscrcpy/core/process/stream_shell.dart';
import 'package:flscrcpy/features/screen_mirroring/domain/entities/device_info.dart';
import 'package:flscrcpy/features/screen_mirroring/presentation/bloc/mirroring/mirroring_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

class ConnectedDeviceWidget extends StatefulWidget {
  final DeviceInfo device;

  const ConnectedDeviceWidget(this.device, {super.key});

  @override
  State<ConnectedDeviceWidget> createState() => _ConnectedDeviceWidgetState();
}

class _ConnectedDeviceWidgetState extends State<ConnectedDeviceWidget> {
  late MirroringBloc _mirroringBloc;

  Timer? _timer;
  StreamShellStatus _status = StreamShellStatus.stopped;
  List<String> _mirroringLogs = [];

  @override
  void initState() {
    super.initState();

    _mirroringBloc = GetIt.I<MirroringBloc>();
    _timer = Timer.periodic(const Duration(milliseconds: 500), (timer) {
      _mirroringBloc.add(GetMirroringStatusEvent(widget.device));
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: handle error state
    // final isError = state is MirroringError;

    final deviceInfoButton = IconButton(
      onPressed: () {
        // TODO: show detailed device info
      },
      icon: Icon(Icons.info_outlined),
    );

    final deviceLogButton = IconButton(
      onPressed: () {
        context.router
            .push(MirroringDeviceLogRoute(mirroringLogs: _mirroringLogs));
      },
      icon: Icon(Icons.terminal),
    );

    final startStopButton = IconButton(
      onPressed: () {
        if (_status == StreamShellStatus.running) {
          _mirroringBloc.add(StopMirroringEvent(widget.device));
        } else {
          _mirroringBloc.add(StartMirroringEvent(widget.device));
        }
      },
      icon: Icon(
          _status == StreamShellStatus.stopped ? Icons.play_arrow : Icons.stop),
    );

    return BlocListener<MirroringBloc, MirroringState>(
      bloc: _mirroringBloc,
      listener: (BuildContext context, MirroringState state) {
        if (state is MirroringStatusUpdated) {
          setState(() {
            _status = state.status.shellStatus;
            _mirroringLogs = state.status.logs;
          });
        }
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(widget.device.productModel),
              Text(widget.device.productDevice),
            ],
          ),
          Row(
            children: [
              deviceLogButton,
              deviceInfoButton,
              startStopButton,
            ],
          ),
        ],
      ),
    );
  }
}
