// Mocks generated by Mockito 5.3.0 from annotations
// in screenshots/test/image_processor_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i3;

import 'package:mockito/mockito.dart' as _i1;
import 'package:screenshots/src/image_magick.dart' as _i2;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

/// A class which mocks [ImageMagick].
///
/// See the documentation for Mockito's code generation for more information.
class MockImageMagick extends _i1.Mock implements _i2.ImageMagick {
  MockImageMagick() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i3.Future<dynamic> convert(
          String? command, Map<dynamic, dynamic>? options) =>
      (super.noSuchMethod(Invocation.method(#convert, [command, options]),
          returnValue: _i3.Future<dynamic>.value()) as _i3.Future<dynamic>);
  @override
  bool isThresholdExceeded(String? imagePath, String? cropSizeOffset,
          [double? threshold = 0.76]) =>
      (super.noSuchMethod(
          Invocation.method(
              #isThresholdExceeded, [imagePath, cropSizeOffset, threshold]),
          returnValue: false) as bool);
  @override
  bool compare(String? comparisonImage, String? recordedImage) =>
      (super.noSuchMethod(
          Invocation.method(#compare, [comparisonImage, recordedImage]),
          returnValue: false) as bool);
  @override
  String getDiffImagePath(String? imagePath) =>
      (super.noSuchMethod(Invocation.method(#getDiffImagePath, [imagePath]),
          returnValue: '') as String);
  @override
  void deleteDiffs(String? dirPath) =>
      super.noSuchMethod(Invocation.method(#deleteDiffs, [dirPath]),
          returnValueForMissingStub: null);
}
