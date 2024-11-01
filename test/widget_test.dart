// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_application_2/main.dart';

void main() {
  testWidgets('Shoe List displays correctly', (WidgetTester tester) async {
    // Build the app and trigger a frame.
    await tester.pumpWidget(MyApp());

    // Verify that the title "Shoes" is displayed.
    expect(find.text('Shoes'), findsOneWidget);

    // Verify that a few specific shoe names are displayed.
    expect(find.text('Nike SB Zoom Blazer Mid Premium'), findsOneWidget);
    expect(find.text('Nike Air Zoom Pegasus'), findsOneWidget);
    expect(find.text('Nike ZoomX Vaporfly'), findsOneWidget);
  });

  testWidgets('Shoe cards display image and price', (WidgetTester tester) async {
    // Build the app and trigger a frame.
    await tester.pumpWidget(MyApp());

    // Verify that each card has an image.
    expect(find.byType(Image), findsNWidgets(5)); // Assuming 5 images

    // Verify that each card displays a price.
    expect(find.text('₹8,795'), findsOneWidget);
    expect(find.text('₹9,995'), findsOneWidget);
    expect(find.text('₹19,695'), findsOneWidget);
  });
}

