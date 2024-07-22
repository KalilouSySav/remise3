import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import 'package:remise3/views/client_create_view.dart';
import 'package:remise3/models/client.dart';
import 'package:remise3/models/carte_credit.dart';
import 'package:remise3/utils/interface/IClientRepository.dart';

class MockClientRepository extends Mock implements IClientRepository {}

void main() {
  testWidgets('Test ajout de carte de crédit', (WidgetTester tester) async {
    final mockRepository = MockClientRepository();

    await tester.pumpWidget(
      MaterialApp(
        home: ClientCreateView(clientRepository: mockRepository),
      ),
    );

    // Vérifiez que les champs sont présents
    expect(find.text('Numéro de Carte'), findsOneWidget);
    expect(find.text('Date d\'Expiration (YYYY-MM-DD)'), findsOneWidget);
    expect(find.text('Code Secret'), findsOneWidget);

    // Entrez des données valides pour la carte de crédit
    await tester.enterText(find.byType(TextFormField).at(0), '1234567812345678');
    await tester.enterText(find.byType(TextFormField).at(1), '2025-12-31');
    await tester.enterText(find.byType(TextFormField).at(2), '123');

    // Cliquez sur le bouton Ajouter Carte
    await tester.tap(find.text('Ajouter Carte'));
    await tester.pump();

    // Vérifiez que la carte a été ajoutée à la liste
    final addedCarte = CarteCredit(
      numeroCarte: '1234567812345678',
      dateExpiration: DateTime.parse('2025-12-31'),
      codeSecret: '123',
    );

  });
}
