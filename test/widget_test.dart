import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:edge_insets_app/app.dart';
import 'package:edge_insets_app/widgets/edge_insets_example.dart';

void main() {
  testWidgets('shows all EdgeInsets examples with their configured padding', (
    tester,
  ) async {
    await tester.pumpWidget(const EdgeInsetsApp());

    expect(find.text('Merioles'), findsOneWidget);
    expect(find.text('EdgeInsets.all(30)'), findsOneWidget);
    expect(
      find.text('EdgeInsets.symmetric(horizontal: 40, vertical: 10)'),
      findsOneWidget,
    );
    expect(
      find.text('EdgeInsets.only(left: 30, top: 10, right: 5, bottom: 20)'),
      findsOneWidget,
    );
    expect(find.text('EdgeInsets.fromLTRB(10, 20, 30, 40)'), findsOneWidget);

    final examples = tester.widgetList<EdgeInsetsExample>(
      find.byType(EdgeInsetsExample),
    );
    expect(examples.map((example) => example.padding), const [
      EdgeInsets.all(30),
      EdgeInsets.symmetric(horizontal: 40, vertical: 10),
      EdgeInsets.only(left: 30, top: 10, right: 5, bottom: 20),
      EdgeInsets.fromLTRB(10, 20, 30, 40),
    ]);
  });
}
