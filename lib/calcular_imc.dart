import 'package:avaliacao_60pt/Controler/cotrolepadding.dart';
import 'package:flutter/material.dart';

class CalcularIMC extends StatefulWidget {
  const CalcularIMC({Key? key}) : super(key: key);

  @override
  State<CalcularIMC> createState() => _CalcularIMCState();
}

class _CalcularIMCState extends State<CalcularIMC> {

  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      if(index == 0){
        Navigator.pushReplacementNamed(context, '/');
      }
      if(index == 1){
        Navigator.pushReplacementNamed(context, '/sobre');
      }

    });

  }

  TextEditingController controlador_altura = TextEditingController();
  TextEditingController controlador_peso = TextEditingController();
  String resultado = '';

  void _calculate(){
    String _infoText = '';
    setState(() {
      double peso = double.parse(controlador_peso.text);
      double altura = double.parse(controlador_altura.text);
      double imc = peso / (altura * altura);
      if(imc < 18.6){
        resultado = "Abaixo do Peso (${imc.toStringAsPrecision(4)})";
      } else if(imc >= 18.6 && imc < 24.9){
        resultado = "Peso Ideal (${imc.toStringAsPrecision(4)})";
      } else if(imc >= 24.9 && imc < 29.9){
        resultado = "Levemente Acima do Peso (${imc.toStringAsPrecision(4)})";
      } else if(imc >= 29.9 && imc < 34.9){
        resultado = "Obesidade Grau I (${imc.toStringAsPrecision(4)})";
      } else if(imc >= 34.9 && imc < 39.9){
        resultado = "Obesidade Grau II (${imc.toStringAsPrecision(4)})";
      } else if(imc >= 40){
        resultado = "Obesidade Grau III (${imc.toStringAsPrecision(4)})";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculadora de IMC"),
        centerTitle: true,
        backgroundColor: Colors.teal,
        actions: <Widget>[
          IconButton(icon: Icon(Icons.apartment_rounded),
            onPressed: () {
              Navigator.pushReplacementNamed(context, '/sobre');
            },),
          IconButton(icon: Icon(Icons.menu),
            onPressed: () {
              Navigator.pushReplacementNamed(context, '/');
            },),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.person_outline, size: 120.0, color: Colors.teal),
          ControlePadding(texto: 'Altura', controlador: controlador_altura),
          ControlePadding(texto: 'Peso', controlador: controlador_peso),
          Container(
            width: 230,
            height: 80,
            child: Padding(
              padding: const EdgeInsets.only(top: 20),
              child: ElevatedButton.icon(onPressed: _calculate, icon: Icon(Icons.calculate), label: Text("Calcular")),
            ),
          ),
          Container(
            padding: EdgeInsets.all(20),
            child: Text(resultado),
          ),
        ],
      ),
    );
  }
}

