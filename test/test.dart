import 'package:book_repair/app/app.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('FlutterPackage', () {
    test('can be instantiated', () {
      expect(const App(), isNotNull);
    });
  });
}
