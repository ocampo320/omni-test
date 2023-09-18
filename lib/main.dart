import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:omni_test/blocs/home_bloc.dart';
import 'package:omni_test/core/constants/app_localizations.dart';
import 'package:omni_test/data/repository/photo_repository_imp.dart';
import 'package:omni_test/presentation/screens/home_screen.dart';
import 'package:omni_test/presentation/themes/custom_theme.dart';
import 'package:omni_test/services/photo_services.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(
    MaterialApp(
      theme: CustomTheme.theme,
      localizationsDelegates: const [
        AppLocalizationsDelegate(),
        // Otros delegates de localización si los tienes
      ],
    
      home: MultiRepositoryProvider(
        providers: [
          RepositoryProvider<PhotoRepositoryImpl>(
            create: (_) => PhotoRepositoryImpl(
              PhotoService(),
            ),
          ),
        ],
        child: MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (context) => HomeBloc(
                photoRepositoryImpl: context.read<PhotoRepositoryImpl>(),
              ),
            ),
          ],
          child: const HomeScreen(),
        ),
      ),
    ),
  );
}
