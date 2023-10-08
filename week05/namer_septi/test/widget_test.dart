import 'package:flutter_test/flutter_test.dart';

import 'package:namer_septi/main.dart';

void main() {
  testWidgets('App starts', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());
    expect(find.text('A random idea:'), findsOneWidget);
  });
}