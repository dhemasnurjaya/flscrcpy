part of 'devices_bloc.dart';

abstract class DevicesEvent extends Equatable {
  const DevicesEvent();
}

class GetDevicesEvent extends DevicesEvent {
  const GetDevicesEvent();

  @override
  List<Object> get props => [];
}
