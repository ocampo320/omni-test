import 'package:flutter/material.dart';
import 'package:omni_test/blocs/home_state.dart';
import 'package:omni_test/core/typographies.dart';
import 'package:omni_test/presentation/widgets/error_container.dart';
import 'package:transparent_image/transparent_image.dart';

class ListCard extends StatelessWidget {
  const ListCard({super.key, required this.state});
 final BlocState state;

  @override
  Widget build(BuildContext context) {
    
    return state.when(
      initial: () {
        return const Text("");
      },
      loading: () {
        // Puedes mostrar un indicador de carga mientras se obtienen los datos.
        return const Center(child: CircularProgressIndicator());
      },
      data: (data) {
        return ListView.builder(
          itemCount: data.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height *
                        0.3, // Establece el alto de la imagen
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(16),
                      child: FadeInImage.memoryNetwork(
                        image: data[index].thumbnailUrl ?? "",
                        placeholder: kTransparentImage,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(
                      height: 10), // Espacio entre la imagen y el título
                  Container(
                    decoration: const BoxDecoration(
                      border: Border(
                          bottom: BorderSide(
                              color: Colors.grey)), // Línea horizontal
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: Text(
                        
                        data[index].title ??
                            "", // Suponiendo que "title" es el campo que deseas mostrar
                       style: AppTypography.stRaleway(
                        fontSize: 16,
                        color: Colors.black,
                        fontWeight: AppTypography.fontWeightBold,
                      ),
                      ),
                    ),
                  ),
                  const SizedBox(
                      height: 10), // Espacio entre elementos de la lista
                ],
              ),
            );
          },
        );
      },
      error: (error) {
        // Manejar errores si es necesario.
        return ErrorContainer(
          textError: error.message,
        );
      },
    );
  }
  }
