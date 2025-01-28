import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flscrcpy/features/screen_mirroring/domain/entities/mirroring_status.dart';
import 'package:flscrcpy/features/screen_mirroring/presentation/bloc/mirorring_status/mirroring_status_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class MirroringStatusPage extends StatefulWidget {
  final String serial;

  const MirroringStatusPage(this.serial, {super.key});

  @override
  State<MirroringStatusPage> createState() => _MirroringStatusPageState();
}

class _MirroringStatusPageState extends State<MirroringStatusPage> {
  Timer? _timer;
  MirroringStatus? _mirroringStatus;

  @override
  void initState() {
    super.initState();

    _timer = Timer.periodic(const Duration(milliseconds: 500), (timer) {
      context
          .read<MirroringStatusBloc>()
          .add(GetMirroringStatus(widget.serial));
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mirroring Status'),
      ),
      body: BlocListener<MirroringStatusBloc, MirroringStatusState>(
        listener: (context, state) {
          if (state is MirroringStatusLoaded) {
            setState(() {
              _mirroringStatus = state.mirroringState;
            });
          }
        },
        child: ListView(
          children:
              _mirroringStatus?.logs.map((log) => Text(log)).toList() ?? [],
        ),
      ),
    );
  }
}
