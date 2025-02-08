import 'package:flscrcpy/core/process/stream_shell.dart';
import 'package:flscrcpy/features/screen_mirroring/data/local/models/mirroring_status_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'mirroring_status.freezed.dart';

@freezed
class MirroringStatus with _$MirroringStatus {
  const factory MirroringStatus({
    required String serial,
    required StreamShellStatus shellStatus,
    required List<String> logs,
  }) = _MirroringStatus;

  factory MirroringStatus.fromModel(MirroringStatusModel model) {
    return MirroringStatus(
      serial: model.serial,
      shellStatus: model.shell.status,
      logs: model.logs,
    );
  }
}
