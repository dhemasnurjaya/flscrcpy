part of 'mirroring_args_bloc.dart';

abstract class MirroringArgsState extends Equatable {
  const MirroringArgsState();

  @override
  List<Object?> get props => [];
}

class MirroringArgsInitial extends MirroringArgsState {
  const MirroringArgsInitial();
}

class MirroringArgsLoading extends MirroringArgsState {
  const MirroringArgsLoading();
}

class MirroringArgsLoaded extends MirroringArgsState {
  final ScrcpyArgs scrcpyArgs;

  const MirroringArgsLoaded(this.scrcpyArgs);

  @override
  List<Object> get props => [scrcpyArgs];
}

class MirroringArgsError extends MirroringArgsState implements ErrorState {
  @override
  final Exception? cause;

  @override
  final String message;

  const MirroringArgsError(this.message, {this.cause});

  @override
  List<Object?> get props => [message, cause];
}
