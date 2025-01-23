import 'package:freezed_annotation/freezed_annotation.dart';

part 'scrcpy_run_args_model.freezed.dart';

@freezed
class ScrcpyRunArgsModel with _$ScrcpyRunArgsModel {
  const ScrcpyRunArgsModel._();

  const factory ScrcpyRunArgsModel({
    required String serial,
    required int videoBitrate,
  }) = _ScrcpyRunArgsModel;

  List<String> get list => [
        '--serial',
        serial,
        '--video-bit-rate',
        videoBitrate.toString(),
        '--verbosity',
        'debug',
      ];
}
