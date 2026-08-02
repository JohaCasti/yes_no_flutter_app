import 'package:flutter/material.dart';

class MessageFieldBox extends StatelessWidget {
  const MessageFieldBox({super.key});

  @override
  Widget build(BuildContext context) {
    final textController =
        TextEditingController(); // nos da control sobre el input

    // mantener el focus del imnput
    final focusNode = FocusNode();

    final colors = Theme.of(
      context,
    ).colorScheme; // llamar el color primario del thema creado

    final outlineInputBorder = UnderlineInputBorder(
      borderSide: BorderSide(color: Colors.transparent),
      //borderSide: BorderSide(color: colors.primary),
      borderRadius: BorderRadius.circular(100),
    );

    final inputDecoration = InputDecoration(
      hintText:
          'End your message with a "?"', // esto es para una validacion de pregunta tener en cuenta.

      enabledBorder: outlineInputBorder,
      focusedBorder: outlineInputBorder,
      filled: true,
      suffixIcon: IconButton(
        icon: Icon(Icons.send_outlined),
        onPressed: () {
          // Acción al presionar el botón de envío
          final textValue = textController.value.text;
          print('Button: $textValue');
          textController.clear(); // Limpiar el campo de texto después de enviar
        },
      ),
    );

    return TextFormField(
      // ESTA ES UNA FORMA PERO SE PUEDE CON VARIABLES PARA MAYOR ORDEN
      //decoration: InputDecoration(
      // enabledBorder: OutlineInputBorder(
      //   borderSide: BorderSide(color: colors.primary),
      //   borderRadius: BorderRadius.circular(100),
      // ),
      //),
      onTapOutside: (event) {
        focusNode.unfocus(); // quitar el focus del input
      },
      focusNode: focusNode,
      controller: textController,
      //keyboardType: TextInputType.text,         --muestra teclado basico.
      decoration: inputDecoration,
      // HAY VARIAS FORMAS DE TENER EL TEXTO EN EL INPUT
      onFieldSubmitted: (value) {
        print('Submit value $value');
        textController.clear();
        focusNode.requestFocus();
      },
      onChanged: (value) {
        print('Changed: $value');
      },
    );
  }
}
