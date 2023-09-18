import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:omni_test/blocs/home_bloc.dart';
import 'package:omni_test/blocs/home_state.dart';
import 'package:omni_test/data/models/Photo.dart';
import 'package:omni_test/data/repository/photo_repository_imp.dart';
import 'package:omni_test/presentation/widgets/list_card.dart';

void main() {
  group('ListCard Widget', () {
    late HomeBloc homeBloc;

    setUp(() {
      homeBloc = HomeBloc(photoRepositoryImpl: MockPhotoRepositoryImpl());
    });

    tearDown(() {
      homeBloc.close();
    });

    testWidgets('Renders LoadingState', (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: BlocProvider.value(
            value: homeBloc,
            child: const ListCard(),
          ),
        ),
      );

      // Emitir el estado de carga
      homeBloc.emit(LoadingState());

      // Esperar a que la interfaz de usuario se reconstruya
      await tester.pump();

      // Verificar si se muestra un CircularProgressIndicator
      expect(find.byType(CircularProgressIndicator), findsOneWidget);
    });

    testWidgets('Renders DataState', (WidgetTester tester) async {
      final mockPhotos = [
        Photo(id: 1, title: 'Photo 1', thumbnailUrl: 'url1'),
        Photo(id: 2, title: 'Photo 2', thumbnailUrl: 'url2'),
      ];

      await tester.pumpWidget(
        MaterialApp(
          home: BlocProvider.value(
            value: homeBloc,
            child: const ListCard(),
          ),
        ),
      );

      // Emitir el estado de datos con fotos simuladas
      homeBloc.emit(DataState(photos: mockPhotos));

      // Esperar a que la interfaz de usuario se reconstruya
      await tester.pump();

      // Verificar si se muestran las fotos y los botones
   //   expect(find.byType(FadeInImage), findsNWidgets(mockPhotos.length));
    //  expect(find.text("Cargar más"), findsOneWidget);
    });

    // Pruebas similares para otros estados como NoMoreDataState y ErrorState
  });
}

// Mock de PhotoRepositoryImpl para simular la respuesta del repositorio
class MockPhotoRepositoryImpl extends Mock implements PhotoRepositoryImpl {}
