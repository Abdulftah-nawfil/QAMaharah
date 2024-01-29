import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_testing/counter_display_widget.dart';

void main() {
testWidgets('Check that the title and the number will appear', (WidgetTester tester) async{
  await tester.pumpWidget( const MaterialApp(
    home: CounterDisplay(number: 0),
  ));
  expect(find.text('Counter'), findsOneWidget );
  expect(find.text('Counter'), findsOneWidget );
});

testWidgets('=0 => grey', (WidgetTester tester) async{
  await tester.pumpWidget( const MaterialApp(
    home: CounterDisplay(number: 0),
  ));
  final numberFinder = find.text('0');
  expect(numberFinder, findsOneWidget );

  Text numberText = tester.firstWidget(numberFinder);

   expect(numberText.style!.color, Colors.grey);

});


testWidgets('<0 => red', (WidgetTester tester) async{
  await tester.pumpWidget( const MaterialApp(
    home: CounterDisplay(number: -1),
  ));
  final numberFinder = find.text('-1');
  expect(numberFinder, findsOneWidget );

  Text numberText = tester.firstWidget(numberFinder);

  expect(numberText.style!.color, Colors.red);

});


testWidgets('>0 => green', (WidgetTester tester) async{
  await tester.pumpWidget( const MaterialApp(
    home: CounterDisplay(number: 1),
  ));
  final numberFinder = find.text('1');
  expect(numberFinder, findsOneWidget );

  Text numberText = tester.firstWidget(numberFinder);

  expect(numberText.style!.color, Colors.green);

});
}
