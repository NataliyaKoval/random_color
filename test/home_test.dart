import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:random_color/app.dart';
import 'package:random_color/screens/home.dart';
import 'package:random_color/utils/colors_util.dart';

class MockColorsUtil extends Mock implements ColorsUtil {}

void main() {
  testWidgets('HomePage has a Text widget', (WidgetTester tester) async {
    await tester.pumpWidget(const App());

    expect(find.byType(Text), findsWidgets);
  });

  testWidgets('Widget has a proper text', (WidgetTester tester) async {
    await tester.pumpWidget(const App());

    expect(find.text('Hey there'), findsOneWidget);
  });

  group('Home screen background color', () {
    final home = Home(colorsUtil: MockColorsUtil());
    final element = home.createElement(); // this will set state.widget
    final state = element.state as HomeState;

    test("backgroundColor should be Colors.lightBlue after initialization", () {
      expect(state.backgroundColor, Colors.lightBlue);
    });

    testWidgets('backgroundColor should change after tapping',
        (WidgetTester tester) async {
      when(() => state.widget.colorsUtil.getRandomColor())
          .thenAnswer((_) => Colors.yellow);
      await tester.pumpWidget(MaterialApp(home: home));
      await tester.tap(find.byType(GestureDetector));
      await tester.pumpAndSettle(const Duration(milliseconds: 400));
      final HomeState myWidgetState = tester.state(find.byType(Home));
      expect(myWidgetState.backgroundColor, Colors.yellow);
    });
  });
}
