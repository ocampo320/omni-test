import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:omni_test/blocs/home_bloc.dart';
import 'package:omni_test/blocs/home_event.dart';
import 'package:omni_test/blocs/home_state.dart';
import 'package:omni_test/core/typographies.dart';
import 'package:omni_test/presentation/widgets/error_container.dart';
import 'package:transparent_image/transparent_image.dart';

class ListCard extends StatelessWidget {
  const ListCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, BlocState>(
      builder: (context, state) {
        if (state is InitialState) {
          return const Center(child: CircularProgressIndicator());
        } else if (state is LoadingState) {
          return const Center(child: CircularProgressIndicator());
        } else if (state is DataState) {
          final currentPhotos = state.photos;
          return ListView.builder(
            itemCount: currentPhotos.length + 1,
            itemBuilder: (context, index) {
              if (index < currentPhotos.length) {
                return Padding(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.3,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(16),
                          child: FadeInImage.memoryNetwork(
                            image: currentPhotos[index].thumbnailUrl ?? "",
                            placeholder: kTransparentImage,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      Container(
                        decoration: const BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              color: Colors.grey,
                            ),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 10),
                          child: Text(
                            currentPhotos[index].title ?? "",
                            style: AppTypography.stRaleway(
                              fontSize: 16,
                              color: Colors.black,
                              fontWeight: AppTypography.fontWeightBold,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                    ],
                  ),
                );
              } else {
                return Padding(
                  padding: const EdgeInsets.all(15),
                  child: ElevatedButton(
                    onPressed: () {
                      context.read<HomeBloc>().add(const LoadMorePhotos());
                    },
                    child: const Text("Cargar más"),
                  ),
                );
              }
            },
          );
        } else if (state is NoMoreDataState) {
          return const ErrorContainer(textError: "Ya no hay más datos!!");
        } else if (state is ErrorState) {
          final errorState = state;
          return ErrorContainer(
            textError: errorState.failure.message,
          );
        }
        return const Text("Error desconocido");
      },
    );
  }
}
