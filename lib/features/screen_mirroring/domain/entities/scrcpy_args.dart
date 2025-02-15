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

  factory ScrcpyArg.fromModel(ScrcpyArgModel model) {
    return ScrcpyArg(
      name: model.name,
      description: model.description,
      paramName: model.paramName,
      paramValue: model.paramValue,
      type: model.type,
    );
  }
}

@freezed
class ScrcpyArgs with _$ScrcpyArgs {
  const ScrcpyArgs._();

  const factory ScrcpyArgs({
    required Map<ScrcpyArgNames, ScrcpyArg> args,
  }) = _ScrcpyArgs;

  factory ScrcpyArgs.fromModel(ScrcpyArgsModel model) {
    return ScrcpyArgs(
      args: {
        ScrcpyArgNames.turnScreenOff: ScrcpyArg.fromModel(model.turnScreenOff),
        ScrcpyArgNames.stayAwake: ScrcpyArg.fromModel(model.stayAwake),
        ScrcpyArgNames.showTouches: ScrcpyArg.fromModel(model.showTouches),
        ScrcpyArgNames.maxSize: ScrcpyArg.fromModel(model.maxSize),
        ScrcpyArgNames.maxFps: ScrcpyArg.fromModel(model.maxFps),
        ScrcpyArgNames.videoBitrate: ScrcpyArg.fromModel(model.videoBitrate),
        ScrcpyArgNames.audioBitrate: ScrcpyArg.fromModel(model.audioBitrate),
      },
    );
  }

  @override
  String toString() {
    return args.entries
        .map((e) => '${e.value.paramName} ${e.value.paramValue}')
        .join(' ');
  }
}
