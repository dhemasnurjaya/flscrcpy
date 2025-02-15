import 'dart:convert';

import 'package:flscrcpy/core/data/local/config.dart';
import 'package:flscrcpy/features/screen_mirroring/data/local/models/scrcpy_args_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// Theme mode shared preferences key
const scrcpyParamsConfigKey = 'scrcpyParams';

class ScrcpyConfig extends Config<ScrcpyArgsModel> {
  final SharedPreferences sharedPreferences;

  ScrcpyConfig({required this.sharedPreferences});

  @override
  Future<ScrcpyArgsModel> get() {
    final params = sharedPreferences.getString(scrcpyParamsConfigKey);
    if (params == null) {
      return Future.value(ScrcpyArgsModel.defaults());
    }
    return Future.value(ScrcpyArgsModel.fromJson(jsonDecode(params)));
  }

  @override
  Future<void> set(ScrcpyArgsModel value) async {
    await sharedPreferences.setString(
      scrcpyParamsConfigKey,
      jsonEncode(value.toJson()),
    );
  }
}
