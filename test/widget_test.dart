import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hello_flutter/timer_controller.dart';
import 'package:hello_flutter/timer_page.dart'; // Import the TimerPage class

void main() {
  group('TimerPage widget', () {
    testWidgets('Initial state', (WidgetTester tester) async {
      await tester.pumpWidget(MaterialApp(home: TimerPage()));

      expect(find.text('Timer App'), findsOneWidget);
      expect(find.text('Start Counter'), findsOneWidget);
      expect(find.byType(Image), findsOneWidget);
      expect(
          find.text('10'), findsOneWidget); // Assuming the timer starts from 10
    });

    testWidgets('Button functionality', (WidgetTester tester) async {
      await tester.pumpWidget(MaterialApp(home: TimerPage()));

      await tester.tap(find.text('Start Counter'));
      await tester.pumpAndSettle(); // Wait for timer to complete

      expect(find.text('Start Counter'), findsOneWidget);
      expect(
          find.text('10'), findsOneWidget); // Assuming the timer starts from 10
    });

    testWidgets('TimerController integration', (WidgetTester tester) async {
      await tester.pumpWidget(MaterialApp(home: TimerPage()));

      await tester.tap(find.text('Start Counter'));
      await tester.pump(Duration(seconds: 1));

      expect(find.text('9'), findsOneWidget);
    });

    testWidgets('Widget state changes', (WidgetTester tester) async {
      await tester.pumpWidget(MaterialApp(home: TimerPage()));

      expect(find.text('Start Counter'), findsOneWidget);
      expect(
          find.text('10'), findsOneWidget); // Assuming the timer starts from 10

      await tester.tap(find.text('Start Counter'));
      await tester.pump(Duration(seconds: 1));

      expect(find.text('9'), findsOneWidget);

      // Wait for the timer to complete (assuming the total time is 10 seconds)
      await tester.pumpAndSettle(Duration(seconds: 9));

      expect(find.text('0'), findsOneWidget);
      expect(find.text('Start Counter'), findsOneWidget);
    });
  });
}
