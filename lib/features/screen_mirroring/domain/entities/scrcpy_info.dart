import 'package:flscrcpy/features/screen_mirroring/data/local/models/scrcpy_info_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'scrcpy_info.freezed.dart';

@freezed
class ScrcpyInfo with _$ScrcpyInfo {
  const factory ScrcpyInfo({
    required String version,
    required List<ScrcpyDependencyInfo> dependencies,
  }) = _ScrcpyInfo;

  factory ScrcpyInfo.fromModel(ScrcpyInfoModel model) {
    return ScrcpyInfo(
      version: model.version,
      dependencies: model.dependencies
          .map((e) => ScrcpyDependencyInfo(
                name: e.name,
                compiledVersion: e.compiledVersion,
                linkedVersion: e.linkedVersion,
              ))
          .toList(),
    );
  }
}

@freezed
class ScrcpyDependencyInfo with _$ScrcpyDependencyInfo {
  const factory ScrcpyDependencyInfo({
    required String name,
    required String compiledVersion,
    required String linkedVersion,
  }) = _ScrcpyDependencyInfo;
}
