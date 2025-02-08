import 'package:equatable/equatable.dart';
import 'package:flscrcpy/core/presentation/bloc/error_state.dart';
import 'package:flscrcpy/features/screen_mirroring/domain/entities/device_info.dart';
import 'package:flscrcpy/features/screen_mirroring/domain/entities/mirroring_status.dart';
import 'package:flscrcpy/features/screen_mirroring/domain/use_cases/get_mirroring_status.dart';
import 'package:flscrcpy/features/screen_mirroring/domain/use_cases/start_mirroring.dart';
import 'package:flscrcpy/features/screen_mirroring/domain/use_cases/stop_mirroring.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'mirroring_event.dart';
part 'mirroring_state.dart';

class MirroringBloc extends Bloc<MirroringEvent, MirroringState> {
  final StartMirroring startMirroring;
  final StopMirroring stopMirroring;
  final GetMirroringStatus getMirroringState;

  MirroringBloc({
    required this.startMirroring,
    required this.stopMirroring,
    required this.getMirroringState,
  }) : super(const MirroringInitial()) {
    on<StartMirroringEvent>(_onStartMirroring);
    on<StopMirroringEvent>(_onStopMirroring);
    on<GetMirroringStatusEvent>(_getMirroringStatus);
  }

  Future<void> _onStartMirroring(
    StartMirroringEvent event,
    Emitter<MirroringState> emit,
  ) async {
    final result = await startMirroring(StartMirroringParams(event.device));
    result.fold(
      (failure) => emit(MirroringError(
        message: failure.message,
        cause: failure.cause,
      )),
      (device) => emit(MirroringStarted(event.device)),
    );
  }

  Future<void> _onStopMirroring(
    StopMirroringEvent event,
    Emitter<MirroringState> emit,
  ) async {
    final result = await stopMirroring(StopMirroringParams(event.device));
    result.fold(
      (failure) => emit(MirroringError(
        message: failure.message,
        cause: failure.cause,
      )),
      (device) => emit(MirroringStopped(event.device)),
    );
  }

  Future<void> _getMirroringStatus(
    GetMirroringStatusEvent event,
    Emitter<MirroringState> emit,
  ) async {
    emit(UpdatingMirroringStatus(event.device));
    final result = await getMirroringState(GetMirroringStatusParams(
      serial: event.device.adbSerial,
    ));
    result.fold(
      (failure) {
        // TODO: log error
      },
      (mirroringStatus) {
        emit(MirroringStatusUpdated(mirroringStatus));
      },
    );
  }
}
