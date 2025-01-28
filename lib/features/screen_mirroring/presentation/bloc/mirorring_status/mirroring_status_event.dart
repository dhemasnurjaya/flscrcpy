part of 'mirroring_status_bloc.dart';

abstract class MirroringStatusEvent extends Equatable {
  const MirroringStatusEvent();
}

class GetMirroringStatus extends MirroringStatusEvent {
  final String serial;

  const GetMirroringStatus(this.serial);

  @override
  List<Object> get props => [serial];
}
