part of 'executable_info_bloc.dart';

abstract class ExecutableInfoEvent extends Equatable {
  const ExecutableInfoEvent();
}

class GetExecutableInfo extends ExecutableInfoEvent {
  const GetExecutableInfo();

  @override
  List<Object?> get props => [];
}
