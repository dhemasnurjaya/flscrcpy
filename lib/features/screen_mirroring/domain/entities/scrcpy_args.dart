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
    required ScrcpyArg turnScreenOff,
    required ScrcpyArg stayAwake,
    required ScrcpyArg showTouches,
    required ScrcpyArg maxSize,
    required ScrcpyArg maxFps,
    required ScrcpyArg videoBitrate,
    required ScrcpyArg audioBitrate,
  }) = _ScrcpyArgs;

  factory ScrcpyArgs.fromModel(ScrcpyArgsModel model) {
    return ScrcpyArgs(
      turnScreenOff: ScrcpyArg.fromModel(model.turnScreenOff),
      stayAwake: ScrcpyArg.fromModel(model.stayAwake),
      showTouches: ScrcpyArg.fromModel(model.showTouches),
      maxSize: ScrcpyArg.fromModel(model.maxSize),
      maxFps: ScrcpyArg.fromModel(model.maxFps),
      videoBitrate: ScrcpyArg.fromModel(model.videoBitrate),
      audioBitrate: ScrcpyArg.fromModel(model.audioBitrate),
    );
  }

  List<ScrcpyArg> get list => [
        turnScreenOff,
        stayAwake,
        showTouches,
        maxSize,
        maxFps,
        videoBitrate,
        audioBitrate,
      ];
}
