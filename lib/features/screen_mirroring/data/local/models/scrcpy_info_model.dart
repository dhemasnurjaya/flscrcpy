import 'package:freezed_annotation/freezed_annotation.dart';

part 'scrcpy_info_model.freezed.dart';

@freezed
class ScrcpyDependencyInfoModel with _$ScrcpyDependencyInfoModel {
  const factory ScrcpyDependencyInfoModel({
    required String name,
    required String compiledVersion,
    required String linkedVersion,
  }) = _ScrcpyDependencyInfoModel;
}

@freezed
class ScrcpyInfoModel with _$ScrcpyInfoModel {
  const factory ScrcpyInfoModel({
    required String version,
    required List<ScrcpyDependencyInfoModel> dependencies,
  }) = _ScrcpyInfoModel;

  factory ScrcpyInfoModel.fromOutput(String output) {
    final lines = output.split('\n');
    String version = '';
    List<ScrcpyDependencyInfoModel> dependencies = [];

    for (int i = 0; i < lines.length; i++) {
      final line = lines[i].trim();

      if (line.startsWith('scrcpy')) {
        version = line.split(' ')[1];
      } else if (line.startsWith('Dependencies')) {
        // Start parsing dependencies from the next line
        for (int j = i + 1; j < lines.length; j++) {
          final dependencyLine = lines[j].trim();
          if (dependencyLine.isEmpty) {
            break; // Stop if we reach an empty line
          }
          final parts = dependencyLine.split(': ');
          if (parts.length == 2) {
            final name = parts[0].trim().substring(2); // Remove '- ' prefix
            final versions = parts[1].split(' / ');
            final compiledVersion = versions[0];
            final linkedVersion = versions[1];
            dependencies.add(ScrcpyDependencyInfoModel(
              name: name,
              compiledVersion: compiledVersion,
              linkedVersion: linkedVersion,
            ));
          }
        }
        break; // We have parsed all dependencies
      }
    }

    return ScrcpyInfoModel(
      version: version,
      dependencies: dependencies,
    );
  }
}
