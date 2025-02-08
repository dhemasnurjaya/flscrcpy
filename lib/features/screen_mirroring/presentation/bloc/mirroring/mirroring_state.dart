part of 'mirroring_bloc.dart';

abstract class MirroringState extends Equatable {
  const MirroringState();
}

class MirroringInitial extends MirroringState {
  const MirroringInitial();

  @override
  List<Object> get props => [];
}

class MirroringStarted extends MirroringState {
  final DeviceInfo device;

  const MirroringStarted(this.device);

  @override
  List<Object> get props => [device];
}

class MirroringStopped extends MirroringState {
  final DeviceInfo device;

  const MirroringStopped(this.device);

  @override
  List<Object> get props => [device];
}

class UpdatingMirroringStatus extends MirroringState {
  final DeviceInfo device;

  const UpdatingMirroringStatus(this.device);

  @override
  List<Object> get props => [device];
}

class MirroringStatusUpdated extends MirroringState {
  final MirroringStatus status;

  const MirroringStatusUpdated(this.status);

  @override
  List<Object> get props => [status];
}

class MirroringError extends MirroringState implements ErrorState {
  @override
  final String message;

  @override
  final Exception? cause;

  const MirroringError({
    required this.message,
    this.cause,
  });

  @override
  List<Object?> get props => [message, cause];
}
