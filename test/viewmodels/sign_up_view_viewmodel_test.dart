import 'package:flutter_test/flutter_test.dart';
import 'package:thuprai_stacked_architecture/app/app.locator.dart';

import '../helpers/test_helpers.dart';

void main() {
  group('SignUpViewViewModel Tests -', () {
    setUp(() => registerServices());
    tearDown(() => locator.reset());
  });
}
