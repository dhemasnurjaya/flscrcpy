// TODO: make use this model to track the device mirroring state

class DeviceMirroringModel {
  final String serial;
  final List<String> logs;

  DeviceMirroringModel({
    required this.serial,
    required this.logs,
  });
}
