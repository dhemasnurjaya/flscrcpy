import 'package:flscrcpy/features/screen_mirroring/domain/entities/device_info.dart';
import 'package:flscrcpy/features/screen_mirroring/domain/repositories/screen_mirrorring_repository.dart';
import 'package:flscrcpy/features/screen_mirroring/presentation/bloc/devices/devices_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

class ConnectedDevicesWidget extends StatefulWidget {
  const ConnectedDevicesWidget({super.key});

  @override
  State<ConnectedDevicesWidget> createState() => _ConnectedDevicesWidgetState();
}

class _ConnectedDevicesWidgetState extends State<ConnectedDevicesWidget> {
  @override
  void initState() {
    super.initState();
    context.read<DevicesBloc>().add(const GetDevicesEvent());
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Connected Devices',
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
            ),
            IconButton(
              onPressed: () {
                context.read<DevicesBloc>().add(const GetDevicesEvent());
              },
              icon: Icon(Icons.refresh),
              constraints: BoxConstraints(),
              padding: EdgeInsets.zero,
            ),
          ],
        ),
        const Divider(),
        BlocBuilder<DevicesBloc, DevicesState>(
          builder: (context, state) {
            if (state is DevicesFound) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: state.devices.map(_buildDeviceItem).toList(),
              );
            }

            if (state is DevicesNotFound) {
              return Text('No devices found');
            }

            if (state is DevicesError) {
              return Text(state.message);
            }

            return Text('Reading devices...');
          },
        ),
      ],
    );
  }

  Widget _buildDeviceItem(DeviceInfo device) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(device.productModel),
            Text(device.productDevice),
          ],
        ),
        Row(
          children: [
            IconButton(
              onPressed: () {
                // TODO: show detailed device info
              },
              icon: Icon(Icons.info_outlined),
            ),
            IconButton(
              onPressed: () {
                // TODO: start screen mirroring
                // TODO: use proper bloc & use case
                GetIt.I<ScreenMirroringRepository>()
                    .startScreenMirroring(device.adbSerial);
              },
              icon: Icon(Icons.play_arrow),
            ),
          ],
        ),
      ],
    );
  }
}
