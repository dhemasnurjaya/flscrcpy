import 'package:flscrcpy/features/screen_mirroring/domain/entities/scrcpy_args.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'scrcpy_args_model.freezed.dart';
part 'scrcpy_args_model.g.dart';

enum ScrcpyArgTypes {
  text,
  number,
  boolean,
}

@freezed
class ScrcpyArgModel with _$ScrcpyArgModel {
  @JsonSerializable()
  const factory ScrcpyArgModel({
    required String name,
    required String description,
    required String paramName,
    required String paramValue,
    required ScrcpyArgTypes type,
  }) = _ScrcpyArgModel;

  factory ScrcpyArgModel.fromEntity(ScrcpyArg entity) {
    return ScrcpyArgModel(
      name: entity.name,
      description: entity.description,
      paramName: entity.paramName,
      paramValue: entity.paramValue,
      type: entity.type,
    );
  }

  factory ScrcpyArgModel.fromJson(Map<String, dynamic> json) =>
      _$ScrcpyArgModelFromJson(json);
}

@freezed
class ScrcpyArgsModel with _$ScrcpyArgsModel {
  const ScrcpyArgsModel._();

  @JsonSerializable()
  const factory ScrcpyArgsModel({
    required ScrcpyArgModel turnScreenOff,
    required ScrcpyArgModel stayAwake,
    required ScrcpyArgModel showTouches,
    required ScrcpyArgModel maxSize,
    required ScrcpyArgModel maxFps,
    required ScrcpyArgModel videoBitrate,
    required ScrcpyArgModel audioBitrate,
  }) = _ScrcpyArgsModel;

  factory ScrcpyArgsModel.defaults() {
    return ScrcpyArgsModel(
      turnScreenOff: ScrcpyArgModel(
        name: 'Turn screen off',
        description: 'Turn the device screen off immediately.',
        paramName: '--turn-screen-off',
        paramValue: 'false',
        type: ScrcpyArgTypes.boolean,
      ),
      stayAwake: ScrcpyArgModel(
        name: 'Stay awake',
        description:
            'Keep the device on while scrcpy is running, when the device is plugged in.',
        paramName: '--stay-awake',
        paramValue: 'false',
        type: ScrcpyArgTypes.boolean,
      ),
      showTouches: ScrcpyArgModel(
        name: 'Show touches',
        description:
            'Enable "show touches" on start, restore the initial value on exit. It only shows physical touches (not clicks from scrcpy).',
        paramName: '--show-touches',
        paramValue: 'false',
        type: ScrcpyArgTypes.boolean,
      ),
      maxSize: ScrcpyArgModel(
        name: 'Max size',
        description:
            'Limit both the width and height of the video to value. The other dimension is computed so that the device aspect-ratio is preserved',
        paramName: '--max-size',
        paramValue: '1024',
        type: ScrcpyArgTypes.number,
      ),
      maxFps: ScrcpyArgModel(
        name: 'Max FPS',
        description:
            'Limit the frame rate of screen capture (officially supported since Android 10, but may work on earlier versions).',
        paramName: '--max-fps',
        paramValue: '30',
        type: ScrcpyArgTypes.number,
      ),
      videoBitrate: ScrcpyArgModel(
        name: 'Video bitrate',
        description:
            'Encode the video at the given bit rate, expressed in bits/s. Unit suffixes are supported: \'K\' (x1000) and \'M\' (x1000000).',
        paramName: '--bit-rate',
        paramValue: '8000000',
        type: ScrcpyArgTypes.text,
      ),
      audioBitrate: ScrcpyArgModel(
        name: 'Audio bitrate',
        description:
            'Encode the audio at the given bit rate, expressed in bits/s. Unit suffixes are supported: \'K\' (x1000) and \'M\' (x1000000).',
        paramName: '--audio-bit-rate',
        paramValue: '128000',
        type: ScrcpyArgTypes.text,
      ),
    );
  }

  factory ScrcpyArgsModel.fromEntity(ScrcpyArgs entity) {
    return ScrcpyArgsModel(
      turnScreenOff: ScrcpyArgModel.fromEntity(entity.turnScreenOff),
      stayAwake: ScrcpyArgModel.fromEntity(entity.stayAwake),
      showTouches: ScrcpyArgModel.fromEntity(entity.showTouches),
      maxSize: ScrcpyArgModel.fromEntity(entity.maxSize),
      maxFps: ScrcpyArgModel.fromEntity(entity.maxFps),
      videoBitrate: ScrcpyArgModel.fromEntity(entity.videoBitrate),
      audioBitrate: ScrcpyArgModel.fromEntity(entity.audioBitrate),
    );
  }

  factory ScrcpyArgsModel.fromJson(Map<String, dynamic> json) =>
      _$ScrcpyArgsModelFromJson(json);

  List<ScrcpyArgModel> get list => [
        turnScreenOff,
        stayAwake,
        showTouches,
        maxSize,
        maxFps,
        videoBitrate,
        audioBitrate,
      ];
}
