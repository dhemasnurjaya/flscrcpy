part of 'mirroring_status_bloc.dart';

abstract class MirroringStatusState extends Equatable {
  const MirroringStatusState();
}

class MirroringStatusInitial extends MirroringStatusState {
  const MirroringStatusInitial();

  @override
  List<Object> get props => [];
}

class MirroringStatusLoading extends MirroringStatusState {
  const MirroringStatusLoading();

  @override
  List<Object> get props => [];
}

class MirroringStatusLoaded extends MirroringStatusState {
  final MirroringStatus mirroringState;

  const MirroringStatusLoaded(this.mirroringState);

  @override
  List<Object> get props => [mirroringState];
}

class MirroringStatusError extends MirroringStatusState implements ErrorState {
  @override
  final String message;

  @override
  final Exception? cause;

  const MirroringStatusError({
    required this.message,
    this.cause,
  });

  @override
  List<Object?> get props => [message, cause];
}
