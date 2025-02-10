import 'package:flscrcpy/features/screen_mirroring/data/local/models/scrcpy_args_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'scrcpy_args.freezed.dart';

@freezed
class ScrcpyArg with _$ScrcpyArg {
  const factory ScrcpyArg({
    required String name,
    required String description,
    required String paramName,
    required String paramValue,
    required ScrcpyArgTypes type,
  }) = _ScrcpyArg;
}

@freezed
class ScrcpyArgs with _$ScrcpyArgs {
  const factory ScrcpyArgs({
    required List<ScrcpyArg> args,
  }) = _ScrcpyArgs;

  factory ScrcpyArgs.fromModel(ScrcpyArgsModel model) {
    return ScrcpyArgs(
      args: model.list
          .map((e) => ScrcpyArg(
                name: e.name,
                description: e.description,
                paramName: e.paramName,
                paramValue: e.paramValue,
                type: e.type,
              ))
          .toList(),
    );
  }
}
