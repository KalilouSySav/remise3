import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:remise3/views/client_edit_view.dart';
import 'package:remise3/models/client.dart';
import 'package:remise3/utils/interface/IClientRepository.dart';

class MockClientRepository extends Mock implements IClientRepository {}

void main() {
  testWidgets('Test modification de client', (WidgetTester tester) async {
    final mockRepository = MockClientRepository();
    final client = Client(
      nom: 'Doe',
      prenom: 'John',
      sexe: 'M',
      dateInscription: DateTime.now(),
      email: 'john.doe@example.com',
      password: 'password',
      cartesDeCredit: [],
    );

    await tester.pumpWidget(
      MaterialApp(
        home: ClientEditView(clientRepository: mockRepository, client: client),
      ),
    );

    // Vérifiez que les champs sont présents et pré-remplis
    expect(find.text('Prénom'), findsOneWidget);
    expect(find.text('Nom'), findsOneWidget);
    expect(find.text('Email'), findsOneWidget);
    expect(find.text('Mot de Passe'), findsOneWidget);
    expect(find.text('Sexe'), findsOneWidget);

    // Modifiez les champs
    await tester.enterText(find.byType(TextFormField).at(0), 'Jane');
    await tester.enterText(find.byType(TextFormField).at(1), 'Doe');
    await tester.enterText(find.byType(TextFormField).at(2), 'jane.doe@example.com');
    await tester.enterText(find.byType(TextFormField).at(3), 'newpassword');
    await tester.enterText(find.byType(TextFormField).at(4), 'F');

    // Cliquez sur le bouton Modifier
    await tester.tap(find.text('Modifier'));
    await tester.pump();

  });
}
