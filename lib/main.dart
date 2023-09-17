import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:omni_test/blocs/home_bloc.dart';
import 'package:omni_test/data/repository/photo_repository_imp.dart';
import 'package:omni_test/presentation/screens/home_screen.dart';
import 'package:omni_test/presentation/themes/custom_theme.dart';
import 'package:omni_test/services/photo_services.dart';

void main() {
  runApp(

    MaterialApp(
     theme: CustomTheme.theme,
      home: MultiRepositoryProvider(
        providers: [
          RepositoryProvider<PhotoRepositoryImpl>(
            create: (_) => PhotoRepositoryImpl(
              PhotoService(),
            ), // O cualquier otra forma de crear tu repositorio.
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
