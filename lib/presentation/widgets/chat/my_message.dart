import 'package:flutter/material.dart';

class MyMessage extends StatelessWidget {
  const MyMessage({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(
      context,
    ).colorScheme; // llamar el color primario del thema creado

    return Column(
      // crear objetos ordenados
      crossAxisAlignment:
          CrossAxisAlignment.end, // aqui se alinea derecha o izquierda
      children: [
        Container(
          decoration: BoxDecoration(
            color: colors.primary, // se llama el color primario del thema
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: Text(
              'Goku y Vegetta',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),

        const SizedBox(height: 15), // espacio entre los mensajes
      ],
    );
  }
}
