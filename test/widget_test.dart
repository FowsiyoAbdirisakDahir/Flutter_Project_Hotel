import 'package:flutter/material.dart';
import 'package:flutter_hotel_booking_ui/motel_app.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:flutter_hotel_booking_ui/main.dart';

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(MotelApp());
    expect(find.text('0'), findsOneWidget);
    expect(find.text('1'), findsNothing);
    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();
    expect(find.text('0'), findsNothing);
    expect(find.text('1'), findsOneWidget);
  });
}
