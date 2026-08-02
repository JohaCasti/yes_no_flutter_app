import 'package:flutter/material.dart';

class OtherMessage extends StatelessWidget {
  const OtherMessage({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Column(
      crossAxisAlignment:
          CrossAxisAlignment.start, // aqui se alinea derecha o izquierda
      children: [
        Container(
          decoration: BoxDecoration(
            color: colors.secondary,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
            child: Text(
              'Hola mi amor como estas',
              style: TextStyle(color: Colors.black),
            ),
          ),
        ),

        const SizedBox(height: 10),

        // IMAGEN:
        _ImagenChat(),
        SizedBox(height: 15),
      ],
    );
  }
}

class _ImagenChat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(
      context,
    ).size; // nos da algunas propiedades del dispositivo para optener datos
    //print(size); se pueden hacer prints no es recomendado pero sirve

    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Image.network(
        'https://yesno.wtf/assets/yes/13-c3082a998e7758be8e582276f35d1336.gif',
        width: size.width * 0.5,
        height: 150,
        fit: BoxFit.cover,
        loadingBuilder: (context, child, loadingProgress) {
          if (loadingProgress == null) return child;
          return Container(
            width: size.width * 0.7,
            height: 150,
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: Text('Mi amor está enviando una imagen...'),
          );
        },
      ),
    );
  }
}
