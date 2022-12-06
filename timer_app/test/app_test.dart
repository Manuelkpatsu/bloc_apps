import 'package:flutter_test/flutter_test.dart';
import 'package:timer_app/app.dart';
import 'package:timer_app/timer/timer.dart';

void main() {
  group('App', () {
    testWidgets('renders TimerPage', (tester) async {
      await tester.pumpWidget(const App());
      expect(find.byType(TimerPage), findsOneWidget);
    });
  });
}
