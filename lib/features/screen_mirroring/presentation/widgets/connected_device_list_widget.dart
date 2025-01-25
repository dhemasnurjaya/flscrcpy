import 'package:flscrcpy/features/screen_mirroring/presentation/bloc/devices/devices_bloc.dart';
import 'package:flscrcpy/features/screen_mirroring/presentation/widgets/connected_device_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ConnectedDeviceListWidget extends StatefulWidget {
  const ConnectedDeviceListWidget({super.key});

  @override
  State<ConnectedDeviceListWidget> createState() =>
      _ConnectedDeviceListWidgetState();
}

class _ConnectedDeviceListWidgetState extends State<ConnectedDeviceListWidget> {
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
                children: state.devices
                    .map((device) => ConnectedDeviceWidget(device))
                    .toList(),
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
}
