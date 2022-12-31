import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_toggle_tab/flutter_toggle_tab.dart';
import 'package:money_tracker/views/components/chartToggle.dart';
import 'package:money_tracker/views/screens/home.dart';

void main() {
  testWidgets('chartToggle test', (WidgetTester tester) async {
    // Create a mock function to be passed to the chartToggle widget
    int tabIndexSelected =0;
    final setTabIndexSelected = (index) => tabIndexSelected = index;

    // Build the chartToggle widget
    await tester.pumpWidget(
      MaterialApp(
        home: chartToggle(
          tabTextIndexSelected: 0,
          setTabIndexSelected: setTabIndexSelected,
        ),
      ),
    );

    // Verify that the initial tab index is correct
    expect(tabIndexSelected, 0);

    // Tap on the second tab
    await tester.tap(find.byType(FlutterToggleTab).at(1));
    await tester.pump();

    // Verify that the tab index was updated
    expect(tabIndexSelected, 1);
  });
}