part of 'mirroring_bloc.dart';

abstract class MirroringEvent extends Equatable {
  const MirroringEvent();
}

class StartMirroringEvent extends MirroringEvent {
  final DeviceInfo device;

  const StartMirroringEvent(this.device);

  @override
  List<Object> get props => [device];
}

class StopMirroringEvent extends MirroringEvent {
  final DeviceInfo device;

  const StopMirroringEvent(this.device);

  @override
  List<Object> get props => [device];
}
