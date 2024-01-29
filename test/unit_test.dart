import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_testing/counter.dart';

void main() {

  group('Checking the counter class is working', () {
    late Counter counter;
    setUp(() {
      counter = Counter();
    });
    test('Check that the number default value is Zero ',() {
      expect(counter.number, 0);
    });
    test('Check that the function increment will work  ',() {
      counter.increment();
      expect(counter.number, 1);
    });

    test('Check that the function decrement will work  ',() {
      counter.decrement();
      expect(counter.number, -1);
    });

    test('Check that the function reset will work  ',() {
      counter.reset();
      expect(counter.number, 0);
    });
  });

}
