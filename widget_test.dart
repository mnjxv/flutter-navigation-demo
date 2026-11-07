import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:navigation_demo/main.dart';

void main() {
  testWidgets('Starts on the Home page', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    expect(find.text('Welcome to the Home Page!'), findsOneWidget);
  });

  testWidgets('Bottom navigation switches pages', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    await tester.tap(find.text('Settings'));
    await tester.pump();
    expect(find.textContaining('S E T T I N G S'), findsOneWidget);

    await tester.tap(find.text('Profile'));
    await tester.pump();
    expect(find.textContaining('P R O F I L E'), findsOneWidget);

    await tester.tap(find.text('Home'));
    await tester.pump();
    expect(find.text('Welcome to the Home Page!'), findsOneWidget);
  });

  testWidgets('Drawer opens Favorites, Friends and Notifications',
      (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    Future<void> openFromDrawer(String item, String pageTitle) async {
      await tester.tap(find.byIcon(Icons.menu));
      await tester.pumpAndSettle();
      await tester.tap(find.text(item));
      await tester.pumpAndSettle();
      expect(find.text(pageTitle), findsOneWidget);
      await tester.pageBack();
      await tester.pumpAndSettle();
    }

    await openFromDrawer('Favorites', 'FAVORITE');
    await openFromDrawer('Friends', 'FRIENDS');
    await openFromDrawer('Notifications', 'NOTIFICATIONS');
  });
}
