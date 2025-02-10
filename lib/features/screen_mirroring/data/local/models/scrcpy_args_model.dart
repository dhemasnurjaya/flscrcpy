import 'package:freezed_annotation/freezed_annotation.dart';

part 'scrcpy_args_model.g.dart';

enum ScrcpyArgTypes {
  text,
  number,
  boolean,
}

@JsonSerializable()
class ScrcpyArgModel {
  final String name;
  final String description;
  final String paramName;
  final String paramValue;
  final ScrcpyArgTypes type;

  const ScrcpyArgModel({
    required this.name,
    required this.description,
    required this.paramName,
    required this.paramValue,
    required this.type,
  });

  factory ScrcpyArgModel.fromJson(Map<String, dynamic> json) =>
      _$ScrcpyArgModelFromJson(json);

  Map<String, dynamic> toJson() => _$ScrcpyArgModelToJson(this);
}

@JsonSerializable()
class ScrcpyArgsModel {
  final ScrcpyArgModel turnScreenOff;
  final ScrcpyArgModel stayAwake;
  final ScrcpyArgModel showTouches;
  final ScrcpyArgModel maxSize;
  final ScrcpyArgModel maxFps;
  final ScrcpyArgModel videoBitrate;
  final ScrcpyArgModel audioBitrate;

  const ScrcpyArgsModel({
    required this.turnScreenOff,
    required this.stayAwake,
    required this.showTouches,
    required this.maxSize,
    required this.maxFps,
    required this.videoBitrate,
    required this.audioBitrate,
  });

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

  List<ScrcpyArgModel> get list => [
        turnScreenOff,
        stayAwake,
        showTouches,
        maxSize,
        maxFps,
        videoBitrate,
        audioBitrate,
      ];

  factory ScrcpyArgsModel.fromJson(Map<String, dynamic> json) =>
      _$ScrcpyArgsModelFromJson(json);

  Map<String, dynamic> toJson() => _$ScrcpyArgsModelToJson(this);
}
