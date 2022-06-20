import 'package:flutter/material.dart';

class ControlePadding extends StatefulWidget{
  const ControlePadding({Key? key, required this.texto, required this.controlador}) : super(key: key);

  final String texto;
  final TextEditingController controlador;

  @override
  State<ControlePadding> createState() => _ControlePaddingState();
}

class _ControlePaddingState extends State<ControlePadding>{


  @override
  Widget build(BuildContext context){
    print(widget.controlador);
    return Padding(
        padding: const EdgeInsets.fromLTRB(32, 5, 52, 5),
        child: TextFormField(
          controller: widget.controlador,
          cursorColor: Colors.teal,
          decoration: InputDecoration(
            fillColor: Colors.teal,
            focusColor: Colors.teal,
            hoverColor: Colors.teal,
            border: OutlineInputBorder(),
            hintText: widget.texto,
          ),
        ),
    );
  }
}