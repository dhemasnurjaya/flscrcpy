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
  late ScrcpyArgs _currentScrcpyArgs;

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
              _currentScrcpyArgs = state.scrcpyArgs;
              return Column(
                children: state.scrcpyArgs.args.entries
                    .map<Widget>(_buildConfigItem)
                    .toList(),
              );
            }

            return const SizedBox();
          },
        ),
      ],
    );
  }

  Widget _buildConfigItem(MapEntry<ScrcpyArgNames, ScrcpyArg> argMapEntry) {
    final scrcpyArgName = argMapEntry.key;
    final scrcpyArg = argMapEntry.value;

    final argDescription = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          scrcpyArg.name,
          style: Theme.of(context)
              .textTheme
              .titleSmall
              ?.copyWith(fontWeight: FontWeight.bold),
        ),
        Text(
          scrcpyArg.paramValue,
          style: Theme.of(context).textTheme.bodySmall,
        ),
      ],
    );

    // TODO: add value validation for number and text
    final argValueInput = switch (scrcpyArg.type) {
      ScrcpyArgTypes.boolean => Switch(
          value: bool.parse(scrcpyArg.paramValue),
          onChanged: (value) => _onArgValueChanged(scrcpyArgName, value),
        ),
      ScrcpyArgTypes.text => TextField(
          controller: TextEditingController(text: scrcpyArg.paramValue),
          onChanged: (value) => _onArgValueChanged(scrcpyArgName, value),
        ),
      ScrcpyArgTypes.number => TextField(
          controller: TextEditingController(text: scrcpyArg.paramValue),
          keyboardType: TextInputType.number,
          onChanged: (value) => _onArgValueChanged(scrcpyArgName, value),
        ),
    };

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            flex: 3,
            child: argDescription,
          ),
          Expanded(
            child: argValueInput,
          ),
        ],
      ),
    );
  }

  void _onArgValueChanged(ScrcpyArgNames scrcpyArgName, dynamic value) {
    final updatedArg = ScrcpyArgs(
      args: Map.from(_currentScrcpyArgs.args)
        ..update(
          scrcpyArgName,
          (existingArg) => existingArg.copyWith(
            paramValue: value.toString(),
          ),
        ),
    );
    context.read<MirroringArgsBloc>().add(UpdateMirroringArgsEvent(updatedArg));
  }
}
