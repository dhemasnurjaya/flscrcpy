import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class MirroringDeviceLogPage extends StatelessWidget {
  final List<String> mirroringLogs;

  const MirroringDeviceLogPage(this.mirroringLogs, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mirroring Status'),
      ),
      body: ListView(
        children: mirroringLogs.map((log) => Text(log)).toList(),
      ),
    );
  }
}
