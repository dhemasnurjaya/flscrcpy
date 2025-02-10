// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'scrcpy_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ScrcpyParam _$ScrcpyParamFromJson(Map<String, dynamic> json) => ScrcpyParam(
      name: json['name'] as String,
      description: json['description'] as String,
      paramName: json['paramName'] as String,
      paramValue: json['paramValue'] as String,
      type: $enumDecode(_$ConfigFieldTypesEnumMap, json['type']),
    );

Map<String, dynamic> _$ScrcpyParamToJson(ScrcpyParam instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'paramName': instance.paramName,
      'paramValue': instance.paramValue,
      'type': _$ConfigFieldTypesEnumMap[instance.type]!,
    };

const _$ConfigFieldTypesEnumMap = {
  ConfigFieldTypes.text: 'text',
  ConfigFieldTypes.number: 'number',
  ConfigFieldTypes.boolean: 'boolean',
};

ScrcpyParams _$ScrcpyParamsFromJson(Map<String, dynamic> json) => ScrcpyParams(
      turnScreenOff:
          ScrcpyParam.fromJson(json['turnScreenOff'] as Map<String, dynamic>),
      stayAwake:
          ScrcpyParam.fromJson(json['stayAwake'] as Map<String, dynamic>),
      showTouches:
          ScrcpyParam.fromJson(json['showTouches'] as Map<String, dynamic>),
      maxSize: ScrcpyParam.fromJson(json['maxSize'] as Map<String, dynamic>),
      maxFps: ScrcpyParam.fromJson(json['maxFps'] as Map<String, dynamic>),
      videoBitrate:
          ScrcpyParam.fromJson(json['videoBitrate'] as Map<String, dynamic>),
      audioBitrate:
          ScrcpyParam.fromJson(json['audioBitrate'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ScrcpyParamsToJson(ScrcpyParams instance) =>
    <String, dynamic>{
      'turnScreenOff': instance.turnScreenOff,
      'stayAwake': instance.stayAwake,
      'showTouches': instance.showTouches,
      'maxSize': instance.maxSize,
      'maxFps': instance.maxFps,
      'videoBitrate': instance.videoBitrate,
      'audioBitrate': instance.audioBitrate,
    };
