part of 'executable_info_bloc.dart';

abstract class ExecutableInfoState extends Equatable {
  const ExecutableInfoState();
}

class ExecutableInfoInitial extends ExecutableInfoState {
  const ExecutableInfoInitial();

  @override
  List<Object?> get props => [];
}

class ExecutableInfoLoading extends ExecutableInfoState {
  const ExecutableInfoLoading();

  @override
  List<Object?> get props => [];
}

class ExecutableInfoLoaded extends ExecutableInfoState {
  final ScrcpyInfo scrcpyInfo;

  const ExecutableInfoLoaded(this.scrcpyInfo);

  @override
  List<Object> get props => [scrcpyInfo];
}

class ExecutableInfoError extends ExecutableInfoState implements ErrorState {
  @override
  final String message;

  @override
  final Exception? cause;

  const ExecutableInfoError({
    required this.message,
    this.cause,
  });

  @override
  List<Object?> get props => [message, cause];
}
