import 'dart:convert';

import 'package:flscrcpy/core/data/local/config.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'scrcpy_config.g.dart';

/// Theme mode shared preferences key
const scrcpyParamsConfigKey = 'scrcpyParams';

enum ConfigFieldTypes {
  text,
  number,
  boolean,
}

@JsonSerializable()
class ScrcpyParam {
  final String name;
  final String description;
  final String paramName;
  final String paramValue;
  final ConfigFieldTypes type;

  ScrcpyParam({
    required this.name,
    required this.description,
    required this.paramName,
    required this.paramValue,
    required this.type,
  });

  factory ScrcpyParam.fromJson(Map<String, dynamic> json) =>
      _$ScrcpyParamFromJson(json);

  Map<String, dynamic> toJson() => _$ScrcpyParamToJson(this);
}

@JsonSerializable()
class ScrcpyParams {
  final ScrcpyParam turnScreenOff;
  final ScrcpyParam stayAwake;
  final ScrcpyParam showTouches;
  final ScrcpyParam maxSize;
  final ScrcpyParam maxFps;
  final ScrcpyParam videoBitrate;
  final ScrcpyParam audioBitrate;

  ScrcpyParams({
    required this.turnScreenOff,
    required this.stayAwake,
    required this.showTouches,
    required this.maxSize,
    required this.maxFps,
    required this.videoBitrate,
    required this.audioBitrate,
  });

  List<ScrcpyParam> get params => [
        turnScreenOff,
        stayAwake,
        showTouches,
        maxSize,
        maxFps,
        videoBitrate,
        audioBitrate,
      ];

  factory ScrcpyParams.defaults() {
    return ScrcpyParams(
      turnScreenOff: ScrcpyParam(
        name: 'Turn screen off',
        description: 'Turn the device screen off immediately.',
        paramName: '--turn-screen-off',
        paramValue: 'false',
        type: ConfigFieldTypes.boolean,
      ),
      stayAwake: ScrcpyParam(
        name: 'Stay awake',
        description:
            'Keep the device on while scrcpy is running, when the device is plugged in.',
        paramName: '--stay-awake',
        paramValue: 'false',
        type: ConfigFieldTypes.boolean,
      ),
      showTouches: ScrcpyParam(
        name: 'Show touches',
        description:
            'Enable "show touches" on start, restore the initial value on exit. It only shows physical touches (not clicks from scrcpy).',
        paramName: '--show-touches',
        paramValue: 'false',
        type: ConfigFieldTypes.boolean,
      ),
      maxSize: ScrcpyParam(
        name: 'Max size',
        description:
            'Limit both the width and height of the video to value. The other dimension is computed so that the device aspect-ratio is preserved',
        paramName: '--max-size',
        paramValue: '1024',
        type: ConfigFieldTypes.number,
      ),
      maxFps: ScrcpyParam(
        name: 'Max FPS',
        description:
            'Limit the frame rate of screen capture (officially supported since Android 10, but may work on earlier versions).',
        paramName: '--max-fps',
        paramValue: '30',
        type: ConfigFieldTypes.number,
      ),
      videoBitrate: ScrcpyParam(
        name: 'Video bitrate',
        description:
            'Encode the video at the given bit rate, expressed in bits/s. Unit suffixes are supported: \'K\' (x1000) and \'M\' (x1000000).',
        paramName: '--bit-rate',
        paramValue: '8000000',
        type: ConfigFieldTypes.text,
      ),
      audioBitrate: ScrcpyParam(
        name: 'Audio bitrate',
        description:
            'Encode the audio at the given bit rate, expressed in bits/s. Unit suffixes are supported: \'K\' (x1000) and \'M\' (x1000000).',
        paramName: '--audio-bit-rate',
        paramValue: '128000',
        type: ConfigFieldTypes.text,
      ),
    );
  }

  factory ScrcpyParams.fromJson(Map<String, dynamic> json) =>
      _$ScrcpyParamsFromJson(json);

  Map<String, dynamic> toJson() => _$ScrcpyParamsToJson(this);
}

class ScrcpyConfig extends Config<ScrcpyParams> {
  final SharedPreferences sharedPreferences;

  ScrcpyConfig({required this.sharedPreferences});

  @override
  Future<ScrcpyParams> get() {
    final params = sharedPreferences.getString(scrcpyParamsConfigKey);
    if (params == null) {
      return Future.value(ScrcpyParams.defaults());
    }
    return Future.value(ScrcpyParams.fromJson(jsonDecode(params)));
  }

  @override
  Future<void> set(ScrcpyParams value) {
    return sharedPreferences.setString(
      scrcpyParamsConfigKey,
      jsonEncode(value.toJson()),
    );
  }
}
