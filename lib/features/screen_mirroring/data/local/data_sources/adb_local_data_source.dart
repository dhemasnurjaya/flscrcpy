import 'package:flscrcpy/core/process/exec_command.dart';
import 'package:flscrcpy/features/screen_mirroring/data/local/models/device_info_model.dart';

abstract class AdbLocalDataSource {
  Future<List<String>> listSerials();
  Future<DeviceInfoModel> getDeviceInfo(String serial);
}

class AdbLocalDataSourceImpl implements AdbLocalDataSource {
  final ExecCommand execCommand;

  AdbLocalDataSourceImpl(this.execCommand);

  @override
  Future<List<String>> listSerials() async {
    final output = await execCommand.oneShot('adb', ['devices']);
    final lines = output.split('\n');
    final deviceSerials =
        lines.skip(1).takeWhile((line) => line.isNotEmpty).map((line) {
      return line.split(RegExp(r'\s+')).first;
    });
    return deviceSerials.toList();
  }

  @override
  Future<DeviceInfoModel> getDeviceInfo(String serial) async {
    final output = await execCommand.oneShot(
      'adb',
      ['-s', serial, 'shell', 'getprop'],
    );
    final lines = output.split('\n');
    return DeviceInfoModel(
      productModel: _readPropValue(lines, 'ro.product.model'),
      productDevice: _readPropValue(lines, 'ro.product.device'),
      androidVersion: _readPropValue(lines, 'ro.build.version.release'),
      sdkVersion: _readPropValue(lines, 'ro.build.version.sdk'),
      buildVersion: _readPropValue(lines, 'ro.build.id'),
      securityPatch: _readPropValue(lines, 'ro.build.version.security_patch'),
    );
  }

  String? _readPropValue(List<String> outputLines, String propKey) {
    for (String line in outputLines) {
      final exp = RegExp(r'^\[' + RegExp.escape(propKey) + r'\]: \[(.+)\]$');
      final match = exp.firstMatch(line);
      if (match != null && match.groupCount > 0) {
        return match.group(1);
      }
    }
    return null;
  }
}
