import 'package:flscrcpy/features/screen_mirroring/presentation/bloc/executable_info/executable_info_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ScrcpyInfoWidget extends StatefulWidget {
  const ScrcpyInfoWidget({super.key});

  @override
  State<ScrcpyInfoWidget> createState() => _ScrcpyInfoWidgetState();
}

class _ScrcpyInfoWidgetState extends State<ScrcpyInfoWidget> {
  @override
  void initState() {
    super.initState();
    context.read<ExecutableInfoBloc>().add(const GetExecutableInfo());
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'About',
          style: Theme.of(context).textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.bold,
              ),
        ),
        const Divider(),
        BlocBuilder<ExecutableInfoBloc, ExecutableInfoState>(
          builder: (context, state) {
            if (state is ExecutableInfoLoaded) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Text(
                    'scrcpy',
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  Text('version: ${state.scrcpyInfo.version}'),
                ],
              );
            } else if (state is ExecutableInfoError) {
              return Text(state.message);
            }

            return const CircularProgressIndicator();
          },
        ),
      ],
    );
  }
}
