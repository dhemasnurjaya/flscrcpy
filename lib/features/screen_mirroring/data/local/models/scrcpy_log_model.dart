import 'package:freezed_annotation/freezed_annotation.dart';

part 'scrcpy_log_model.freezed.dart';

@freezed
class ScrcpyLogModel with _$ScrcpyLogModel {
  const factory ScrcpyLogModel({
    required String message,
    required DateTime timestamp,
  }) = _ScrcpyLogModel;
}
