import 'package:equatable/equatable.dart';
import 'package:flscrcpy/core/domain/no_params.dart';
import 'package:flscrcpy/core/presentation/bloc/error_state.dart';
import 'package:flscrcpy/features/screen_mirroring/domain/entities/scrcpy_args.dart';
import 'package:flscrcpy/features/screen_mirroring/domain/use_cases/get_scrcpy_args.dart';
import 'package:flscrcpy/features/screen_mirroring/domain/use_cases/set_scrcpy_args.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'mirroring_args_event.dart';
part 'mirroring_args_state.dart';

class MirroringArgsBloc extends Bloc<MirroringArgsEvent, MirroringArgsState> {
  final GetScrcpyArgs getScrcpyArgs;
  final SetScrcpyArgs setScrcpyArgs;

  MirroringArgsBloc({
    required this.getScrcpyArgs,
    required this.setScrcpyArgs,
  }) : super(const MirroringArgsInitial()) {
    on<GetMirroringArgsEvent>(_onGetMirroringArgs);
    on<UpdateMirroringArgsEvent>(_onUpdateMirroringArgs);
  }

  Future<void> _onGetMirroringArgs(
    GetMirroringArgsEvent event,
    Emitter<MirroringArgsState> emit,
  ) async {
    emit(const MirroringArgsLoading());
    final result = await getScrcpyArgs(NoParams());
    result.fold(
      (failure) => emit(MirroringArgsError(
        failure.message,
        cause: failure.cause,
      )),
      (scrcpyArgs) => emit(MirroringArgsLoaded(scrcpyArgs)),
    );
  }

  Future<void> _onUpdateMirroringArgs(
    UpdateMirroringArgsEvent event,
    Emitter<MirroringArgsState> emit,
  ) async {
    emit(const MirroringArgsLoading());
    final result = await setScrcpyArgs(SetScrcpyArgsParams(event.scrcpyArgs));
    result.fold(
      (failure) => emit(MirroringArgsError(
        failure.message,
        cause: failure.cause,
      )),
      (_) => emit(MirroringArgsLoaded(event.scrcpyArgs)),
    );
  }
}
