import 'package:flutter_test/flutter_test.dart';
import 'package:todos_app/stats/stats.dart';

void main() {
  group('StatsEvent', () {
    group('StatsSubscriptionRequested', () {
      test('supports value equality', () {
        expect(
          const StatsSubscriptionRequested(),
          equals(const StatsSubscriptionRequested()),
        );
      });

      test('props are correct', () {
        expect(
          const StatsSubscriptionRequested().props,
          equals(<Object?>[]),
        );
      });
    });
  });
}
