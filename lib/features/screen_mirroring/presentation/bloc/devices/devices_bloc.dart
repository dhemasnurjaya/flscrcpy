import 'package:equatable/equatable.dart';
import 'package:flscrcpy/core/domain/no_params.dart';
import 'package:flscrcpy/core/presentation/bloc/error_state.dart';
import 'package:flscrcpy/features/screen_mirroring/domain/entities/device_info.dart';
import 'package:flscrcpy/features/screen_mirroring/domain/use_cases/list_connected_devices.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'devices_event.dart';
part 'devices_state.dart';

class DevicesBloc extends Bloc<DevicesEvent, DevicesState> {
  final ListConnectedDevices listConnectedDevices;

  DevicesBloc({
    required this.listConnectedDevices,
  }) : super(const DevicesInitial()) {
    on<GetDevicesEvent>(_onGetDevices);
  }

  Future<void> _onGetDevices(
    GetDevicesEvent event,
    Emitter<DevicesState> emit,
  ) async {
    emit(const DevicesLoading());
    final result = await listConnectedDevices(const NoParams());
    result.fold(
        (failure) => emit(DevicesError(
              message: failure.message,
              cause: failure.cause,
            )), (devices) {
      if (devices.isNotEmpty) {
        emit(DevicesFound(devices));
      } else {
        emit(const DevicesNotFound());
      }
    });
  }
}
