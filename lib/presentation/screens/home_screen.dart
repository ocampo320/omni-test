import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:omni_test/blocs/home_bloc.dart';
import 'package:omni_test/blocs/home_event.dart';
import 'package:omni_test/blocs/home_state.dart';
import 'package:omni_test/presentation/widgets/list_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    context.read<HomeBloc>().add(HomeStarted());
    return BlocBuilder<HomeBloc, BlocState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(),
          body: SafeArea(
            child:ListCard(state: state,)
          ),
        );
      },
    );
  }


}
