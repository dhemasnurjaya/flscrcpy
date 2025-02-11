import 'package:flscrcpy/features/screen_mirroring/data/local/models/scrcpy_args_model.dart';
import 'package:flscrcpy/features/screen_mirroring/domain/entities/scrcpy_args.dart';
import 'package:flscrcpy/features/screen_mirroring/presentation/bloc/mirroring_args/mirroring_args_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ScrcpyConfigWidget extends StatefulWidget {
  const ScrcpyConfigWidget({super.key});

  @override
  State<ScrcpyConfigWidget> createState() => _ScrcpyConfigWidgetState();
}

class _ScrcpyConfigWidgetState extends State<ScrcpyConfigWidget> {
  @override
  void initState() {
    super.initState();
    context.read<MirroringArgsBloc>().add(const GetMirroringArgsEvent());
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Scrcpy Configuration',
          style: Theme.of(context).textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.bold,
              ),
        ),
        const Divider(),
        BlocBuilder<MirroringArgsBloc, MirroringArgsState>(
          builder: (context, state) {
            if (state is MirroringArgsLoaded) {
              return Column(
                children: state.scrcpyArgs.list.map<Widget>((arg) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 4),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          flex: 3,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                arg.name,
                                style: Theme.of(context)
                                    .textTheme
                                    .titleSmall
                                    ?.copyWith(fontWeight: FontWeight.bold),
                              ),
                              Text(
                                arg.description,
                                style: Theme.of(context).textTheme.bodySmall,
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: _buildArgValue(arg),
                        ),
                      ],
                    ),
                  );
                }).toList(),
              );
            }

            return const SizedBox();
          },
        ),
      ],
    );
  }

  Widget _buildArgValue(ScrcpyArg arg) {
    switch (arg.type) {
      case ScrcpyArgTypes.boolean:
        return Switch(
          value: bool.parse(arg.paramValue),
          onChanged: (value) {},
        );
      case ScrcpyArgTypes.text:
        return TextField(
          controller: TextEditingController(text: arg.paramValue),
          onChanged: (value) {},
        );
      case ScrcpyArgTypes.number:
        return TextField(
          controller: TextEditingController(text: arg.paramValue),
          keyboardType: TextInputType.number,
          onChanged: (value) {},
        );
    }
  }
}
