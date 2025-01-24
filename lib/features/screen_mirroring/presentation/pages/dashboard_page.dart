import 'package:auto_route/auto_route.dart';
import 'package:flscrcpy/features/screen_mirroring/presentation/widgets/connected_device_list_widget.dart';
import 'package:flscrcpy/features/screen_mirroring/presentation/widgets/scrcpy_info_widget.dart';
import 'package:flutter/material.dart';

@RoutePage()
class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        children: [
          ScrcpyInfoWidget(),
          const SizedBox(height: 24),
          ConnectedDeviceListWidget(),
        ],
      ),
    );
  }
}
