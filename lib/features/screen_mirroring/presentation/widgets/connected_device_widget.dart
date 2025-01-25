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

  @override
  void initState() {
    super.initState();
    _mirroringBloc = GetIt.I<MirroringBloc>();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MirroringBloc, MirroringState>(
      bloc: _mirroringBloc,
      builder: (context, state) {
        final isStarted = state is MirroringStarted;
        final isLoading =
            state is MirroringStarting || state is MirroringStopping;
        final isStopped =
            state is MirroringStopped || state is MirroringInitial;
        // final isError = state is MirroringError;

        final deviceInfoButton = IconButton(
          onPressed: () {
            // TODO: show detailed device info
          },
          icon: Icon(Icons.info_outlined),
        );

        final startStopButton = IconButton(
          onPressed: () {
            if (isStarted) {
              _mirroringBloc.add(StopMirroringEvent(widget.device));
            } else {
              _mirroringBloc.add(StartMirroringEvent(widget.device));
            }
          },
          icon: isLoading
              ? SizedBox(
                  height: 20,
                  width: 20,
                  child: CircularProgressIndicator(),
                )
              : Icon(isStopped ? Icons.play_arrow : Icons.stop),
        );

        return Row(
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
                deviceInfoButton,
                startStopButton,
              ],
            ),
          ],
        );
      },
    );
  }
}
