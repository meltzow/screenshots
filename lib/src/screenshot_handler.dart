import 'dart:io';

import 'globals.dart';
import 'utils.dart' as utils;

Future<bool> screenshotHandler(
  String name,
  List<int> pixels, {
  bool silent = false,
  String? configPath,
  String? configStr,
}) async {
  final testDir =
      '${getStagingDir(configPath: configPath, configStr: configStr)}/$kTestScreenshotsDir';
  final file =
      await File('$testDir/$name.$kImageExtension').create(recursive: true);
  await file.writeAsBytes(pixels);
  if (!silent) print('Screenshot $name created');
  return true;
}

String getStagingDir({String? configPath, String? configStr}) {
  var _configInfo = <String, dynamic>{};

  if (configStr != null) {
    // used by tests
    _configInfo = utils.parseYamlStr(configStr);
  } else {
    final envConfigPath = Platform.environment[kEnvConfigPath];
    if (envConfigPath == null) {
      // used by command line and by driver if using kConfigFileName
      _configInfo = utils.parseYamlFile(configPath ?? kConfigFileName);
    } else {
      // used by driver
      _configInfo = utils.parseYamlFile(envConfigPath);
    }
  }

  var staging = _configInfo['staging'];

  return staging;
}
