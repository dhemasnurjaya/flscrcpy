// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'scrcpy_args_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ScrcpyArgModel _$ScrcpyArgModelFromJson(Map<String, dynamic> json) =>
    ScrcpyArgModel(
      name: json['name'] as String,
      description: json['description'] as String,
      paramName: json['paramName'] as String,
      paramValue: json['paramValue'] as String,
      type: $enumDecode(_$ScrcpyArgTypesEnumMap, json['type']),
    );

Map<String, dynamic> _$ScrcpyArgModelToJson(ScrcpyArgModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'paramName': instance.paramName,
      'paramValue': instance.paramValue,
      'type': _$ScrcpyArgTypesEnumMap[instance.type]!,
    };

const _$ScrcpyArgTypesEnumMap = {
  ScrcpyArgTypes.text: 'text',
  ScrcpyArgTypes.number: 'number',
  ScrcpyArgTypes.boolean: 'boolean',
};

ScrcpyArgsModel _$ScrcpyArgsModelFromJson(Map<String, dynamic> json) =>
    ScrcpyArgsModel(
      turnScreenOff: ScrcpyArgModel.fromJson(
          json['turnScreenOff'] as Map<String, dynamic>),
      stayAwake:
          ScrcpyArgModel.fromJson(json['stayAwake'] as Map<String, dynamic>),
      showTouches:
          ScrcpyArgModel.fromJson(json['showTouches'] as Map<String, dynamic>),
      maxSize: ScrcpyArgModel.fromJson(json['maxSize'] as Map<String, dynamic>),
      maxFps: ScrcpyArgModel.fromJson(json['maxFps'] as Map<String, dynamic>),
      videoBitrate:
          ScrcpyArgModel.fromJson(json['videoBitrate'] as Map<String, dynamic>),
      audioBitrate:
          ScrcpyArgModel.fromJson(json['audioBitrate'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ScrcpyArgsModelToJson(ScrcpyArgsModel instance) =>
    <String, dynamic>{
      'turnScreenOff': instance.turnScreenOff,
      'stayAwake': instance.stayAwake,
      'showTouches': instance.showTouches,
      'maxSize': instance.maxSize,
      'maxFps': instance.maxFps,
      'videoBitrate': instance.videoBitrate,
      'audioBitrate': instance.audioBitrate,
    };
