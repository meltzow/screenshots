import 'dart:async';
import 'dart:io';

/// We cannot import integration_test or flutter_test because they lead to the following error: 'dart:ui' not found
/// More info here: https://github.com/flutter/flutter/issues/27826
/// Make sure to pass a IntegrationTestWidgetsFlutterBinding for `binding` and a WidgetTester for `tester`
Future screenshot(dynamic binding, dynamic tester, String lang, String name, {bool silent = true}) async {
  if (Platform.isAndroid) {
    // This is required prior to taking the screenshot (Android only).
    await binding.convertFlutterSurfaceToImage();
  }

  // Trigger a frame.
  await tester.pumpAndSettle();

  // Take screenshot
  final screenshotName = '$lang/$name';
  await binding.takeScreenshot(screenshotName);
  if (!silent) print('Screenshot $screenshotName created');
}
