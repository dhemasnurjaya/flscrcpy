import 'package:equatable/equatable.dart';
import 'package:flscrcpy/core/domain/no_params.dart';
import 'package:flscrcpy/core/presentation/bloc/error_state.dart';
import 'package:flscrcpy/features/screen_mirroring/domain/entities/scrcpy_info.dart';
import 'package:flscrcpy/features/screen_mirroring/domain/use_cases/get_scrcpy_info.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'executable_info_event.dart';
part 'executable_info_state.dart';

class ExecutableInfoBloc
    extends Bloc<ExecutableInfoEvent, ExecutableInfoState> {
  final GetScrcpyInfo getScrcpyInfo;

  ExecutableInfoBloc({
    required this.getScrcpyInfo,
  }) : super(const ExecutableInfoInitial()) {
    on<GetExecutableInfo>(_onGetExecutableInfo);
  }

  Future<void> _onGetExecutableInfo(
    GetExecutableInfo event,
    Emitter<ExecutableInfoState> emit,
  ) async {
    emit(const ExecutableInfoLoading());
    final executableInfo = await getScrcpyInfo(const NoParams());
    return executableInfo.fold(
      (l) => emit(ExecutableInfoError(message: l.message)),
      (r) => emit(ExecutableInfoLoaded(r)),
    );
  }
}
