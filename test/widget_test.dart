// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myportofolio_mobile/services/api_client.dart';

import 'package:myportofolio_mobile/main.dart';

void main() {
  testWidgets('App builds without crashing', (WidgetTester tester) async {
    // MyApp sekarang membutuhkan ApiClient di constructor.
    await tester.pumpWidget(MyApp(apiClient: ApiClient()));

    // Minimal: pastikan MaterialApp ter-render.
    expect(find.byType(MaterialApp), findsOneWidget);

    // Biarkan frame async selesai (mis. FutureBuilder, animasi).
    await tester.pumpAndSettle();
  });
}
