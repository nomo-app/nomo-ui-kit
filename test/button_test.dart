import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:nomo_ui_kit/components/button/button_const.dart';
import 'package:nomo_ui_kit/components/button/nomo_button.dart';

void main() {
  const mediumWidth = ButtonConstants.mediumTextButtonWidth;
  const mediumHeight = ButtonConstants.mediumTextButtonHeight;

  const largeWidth = ButtonConstants.largeTextButtonWidth;
  const largeHeight = ButtonConstants.largeTextButtonHeight;

  const smallWidth = ButtonConstants.smallTextButtonWidth;
  const smallHeight = ButtonConstants.smallTextButtonHeight;

  testWidgets('Test NomoButton.text widget medium',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: NomoButton.text(
            size: ButtonSize.medium,
            onPressed: () {},
            text: 'Click Me',
          ),
        ),
      ),
    );

    final buttonFinder = find.byType(NomoButton);
    final buttonWidget = tester.widget(buttonFinder) as NomoButton;

    expect(find.text('Click Me'), findsOneWidget);
    expect(find.byType(NomoButton), findsOneWidget);
    expect(buttonWidget.width, mediumWidth);
    expect(buttonWidget.height, mediumHeight);
  });

  testWidgets('Test NomoButton.icon widget medium',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: NomoButton.icon(
            size: ButtonSize.medium,
            onPressed: () {},
            icon: const Icon(Icons.add),
          ),
        ),
      ),
    );

    expect(find.byIcon(Icons.add), findsOneWidget);
    expect(find.byType(NomoButton), findsOneWidget);
  });

  testWidgets('Test NomoButton.icon widget small', (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: NomoButton.icon(
            size: ButtonSize.small,
            onPressed: () {},
            icon: const Icon(Icons.add),
          ),
        ),
      ),
    );

    expect(find.byIcon(Icons.add), findsOneWidget);
    expect(find.byType(NomoButton), findsOneWidget);
  });

  testWidgets('Test NomoButton.icon widget large', (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: NomoButton.icon(
            size: ButtonSize.large,
            onPressed: () {},
            icon: const Icon(Icons.add),
          ),
        ),
      ),
    );

    expect(find.byIcon(Icons.add), findsOneWidget);
    expect(find.byType(NomoButton), findsOneWidget);
  });

  testWidgets('Test NomoButton.text widget large', (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: NomoButton.text(
            size: ButtonSize.large,
            onPressed: () {},
            text: 'Click Me',
          ),
        ),
      ),
    );

    final buttonFinder = find.byType(NomoButton);
    final buttonWidget = tester.widget(buttonFinder) as NomoButton;

    expect(find.text('Click Me'), findsOneWidget);
    expect(find.byType(NomoButton), findsOneWidget);
    expect(buttonWidget.width, largeWidth);
    expect(buttonWidget.height, largeHeight);
  });

  testWidgets('Test NomoButton.text widget small', (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: NomoButton.text(
            size: ButtonSize.small,
            onPressed: () {},
            text: 'Click Me',
          ),
        ),
      ),
    );

    final buttonFinder = find.byType(NomoButton);
    final buttonWidget = tester.widget(buttonFinder) as NomoButton;

    expect(find.text('Click Me'), findsOneWidget);
    expect(find.byType(NomoButton), findsOneWidget);
    expect(buttonWidget.width, smallWidth);
    expect(buttonWidget.height, smallHeight);
  });

  testWidgets('Test NomoButton.text widget small with icon',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: NomoButton.text(
            size: ButtonSize.small,
            onPressed: () {},
            text: 'Click Me',
            leading: const Icon(Icons.add),
            trailing: const Icon(Icons.delete),
          ),
        ),
      ),
    );

    final buttonFinder = find.byType(NomoButton);
    final buttonWidget = tester.widget(buttonFinder) as NomoButton;

    expect(find.text('Click Me'), findsOneWidget);
    expect(find.byType(NomoButton), findsOneWidget);
    expect(find.byIcon(Icons.add), findsOneWidget);
    expect(find.byIcon(Icons.delete), findsOneWidget);
    expect(buttonWidget.width, smallWidth);
    expect(buttonWidget.height, smallHeight);
  });

  testWidgets('Test NomoButton.text widget medium with icon',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: NomoButton.text(
            size: ButtonSize.medium,
            onPressed: () {},
            text: 'Click Me',
            leading: const Icon(Icons.add),
            trailing: const Icon(Icons.delete),
          ),
        ),
      ),
    );

    final buttonFinder = find.byType(NomoButton);
    final buttonWidget = tester.widget(buttonFinder) as NomoButton;

    expect(find.text('Click Me'), findsOneWidget);
    expect(find.byType(NomoButton), findsOneWidget);
    expect(find.byIcon(Icons.add), findsOneWidget);
    expect(find.byIcon(Icons.delete), findsOneWidget);
    expect(buttonWidget.width, mediumWidth);
    expect(buttonWidget.height, mediumHeight);
  });
  testWidgets('Test NomoButton.text widget large with icon',
      (WidgetTester tester) async {
    var i = 0;

    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: NomoButton.text(
            highlightColor: Colors.green,
            color: Colors.red,
            size: ButtonSize.large,
            onPressed: () {
              i++;
            },
            text: 'Click Me',
            leading: const Icon(Icons.add),
            trailing: const Icon(Icons.delete),
          ),
        ),
      ),
    );

    final buttonFinder = find.byType(NomoButton);
    final buttonWidget = tester.widget(buttonFinder) as NomoButton;

    expect(buttonWidget.color, Colors.red);
    expect(i, 0);
    await tester.tap(buttonFinder);
    await tester.pump();
    expect(buttonWidget.highlightColor, Colors.green);
    expect(i, 1);
    expect(find.text('Click Me'), findsOneWidget);
    expect(find.byType(NomoButton), findsOneWidget);
    expect(find.byIcon(Icons.add), findsOneWidget);
    expect(find.byIcon(Icons.delete), findsOneWidget);
    expect(buttonWidget.width, largeWidth);
    expect(buttonWidget.height, largeHeight);
  });

  testWidgets('Test isLoading Button', (widgetTester) async {
    await widgetTester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: NomoButton.text(
            isLoading: true,
            size: ButtonSize.large,
            onPressed: () {},
            text: 'Click Me',
          ),
        ),
      ),
    );

    final buttonFinder = find.byType(NomoButton);
    final buttonWidget = widgetTester.widget(buttonFinder) as NomoButton;
    expect(buttonWidget.loadingWidget, isNotNull);
    expect(buttonWidget.isLoading, true);
  });
}
