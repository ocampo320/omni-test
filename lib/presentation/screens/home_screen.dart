import 'dart:convert';

import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:omni_test/blocs/home_bloc.dart';
import 'package:omni_test/blocs/home_event.dart';
import 'package:omni_test/blocs/home_state.dart';
import 'package:omni_test/core/constants/app_localizations.dart';
import 'package:omni_test/core/constants/constans.dart';
import 'package:omni_test/presentation/widgets/list_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    context.read<HomeBloc>().add(HomeStarted());
    _initRemoteConfig();
  }

  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context);
  
    return BlocBuilder<HomeBloc, BlocState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: Text(
              localizations.getLocalizedValue("photoList"),
            ),
            centerTitle: true,
          ),
          body: const SafeArea(
            child: ListCard(),
          ),
        );
      },
    );
  }

  void _initRemoteConfig() {
    _setupRemoteConfig().then((value) {
      _setupL10n(value.getString(Constants.l10n));
    });
  }

  Future<FirebaseRemoteConfig> _setupRemoteConfig() async {
    final FirebaseRemoteConfig remoteConfig = FirebaseRemoteConfig.instance;
    await remoteConfig.setConfigSettings(RemoteConfigSettings(
      fetchTimeout: const Duration(seconds: 10),
      minimumFetchInterval: const Duration(hours: 1),
    ));
    await remoteConfig.fetchAndActivate();

    return remoteConfig;
  }

  void _setupL10n(String data) {
    var jsonData = jsonDecode(data) as Map;
    AppLocalizations.of(context).localizedValues =
        jsonData.map((key, value) => MapEntry(key, value as String));
  }
}
