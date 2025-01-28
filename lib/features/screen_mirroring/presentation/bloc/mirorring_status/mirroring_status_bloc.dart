import 'package:equatable/equatable.dart';
import 'package:flscrcpy/core/presentation/bloc/error_state.dart';
import 'package:flscrcpy/features/screen_mirroring/domain/entities/mirroring_status.dart';
import 'package:flscrcpy/features/screen_mirroring/domain/use_cases/get_mirroring_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'mirroring_status_event.dart';
part 'mirroring_status_state.dart';

class MirroringStatusBloc
    extends Bloc<MirroringStatusEvent, MirroringStatusState> {
  final GetMirroringState getMirroringState;

  MirroringStatusBloc({
    required this.getMirroringState,
  }) : super(const MirroringStatusInitial()) {
    on<GetMirroringStatus>(_getMirroringStatus);
  }

  Future<void> _getMirroringStatus(
      GetMirroringStatus event, Emitter<MirroringStatusState> emit) async {
    emit(const MirroringStatusLoading());
    final result = await getMirroringState(GetMirroringStateParams(
      serial: event.serial,
    ));
    result.fold(
      (failure) {
        emit(MirroringStatusError(
            message: failure.message, cause: failure.cause));
      },
      (mirroringStatus) {
        emit(MirroringStatusLoaded(mirroringStatus));
      },
    );
  }
}
