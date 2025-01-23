part of 'devices_bloc.dart';

abstract class DevicesState extends Equatable {
  const DevicesState();
}

class DevicesInitial extends DevicesState {
  const DevicesInitial();

  @override
  List<Object> get props => [];
}

class DevicesLoading extends DevicesState {
  const DevicesLoading();

  @override
  List<Object> get props => [];
}

class DevicesFound extends DevicesState {
  final List<DeviceInfo> devices;

  const DevicesFound(this.devices);

  @override
  List<Object> get props => [devices];
}

class DevicesNotFound extends DevicesState {
  const DevicesNotFound();

  @override
  List<Object> get props => [];
}

class DevicesError extends DevicesState implements ErrorState {
  @override
  final String message;

  @override
  final Exception? cause;

  const DevicesError({
    required this.message,
    this.cause,
  });

  @override
  List<Object?> get props => [message, cause];
}
