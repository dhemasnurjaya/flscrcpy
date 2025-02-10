part of 'mirroring_args_bloc.dart';

abstract class MirroringArgsEvent extends Equatable {
  const MirroringArgsEvent();

  @override
  List<Object?> get props => [];
}

class GetMirroringArgsEvent extends MirroringArgsEvent {
  const GetMirroringArgsEvent();
}

class UpdateMirroringArgsEvent extends MirroringArgsEvent {
  final ScrcpyArgs scrcpyArgs;

  const UpdateMirroringArgsEvent(this.scrcpyArgs);

  @override
  List<Object?> get props => [scrcpyArgs];
}
