import 'package:flutter_test/flutter_test.dart';
import 'package:southsea_cinema/main.dart';
import 'package:southsea_cinema/views/home_view.dart';

void main() {
  group('App smoke tests', () {
    testWidgets('App displays HomeView as home', (WidgetTester tester) async {
      await tester.pumpWidget(const SouthseaCinemaApp());
      expect(find.byType(HomeView), findsOneWidget);
      expect(find.text('Southsea Cinema & Arts Centre'), findsOneWidget);
    });

    testWidgets('Displays movie cards with titles, times and booking buttons',
        (WidgetTester tester) async {
      await tester.pumpWidget(const SouthseaCinemaApp());
      expect(
        find.textContaining('TOP GUN: MAVERICK', findRichText: true),
        findsOneWidget,
      );
      expect(find.text('Wednesday 25 Nov 2026, 15:00'), findsOneWidget);
      expect(
        find.textContaining('GODZILLA MINUS ONE', findRichText: true),
        findsOneWidget,
      );
      expect(find.text('Thursday 26 Nov 2026, 12:00'), findsOneWidget);
      expect(find.text('BOOK NOW'), findsNWidgets(2));
    });
  });
}
