import 'package:flutter/material.dart';

class Alimentacao extends StatefulWidget {
  const Alimentacao({Key? key}) : super(key: key);

  @override
  State<Alimentacao> createState() => _AlimentacaoState();
}

String dicaAlimentacao ='''
  O que é uma alimentação saudável?\n
  Alimentação saudável é aquela que fornece todos os nutrientes fundamentais para o funcionamento do nosso corpo, como carboidratos, lipídios, proteínas, sais minerais e vitaminas. Muitas pessoas acreditam que os carboidratos e lipídios são vilões quando o assunto é uma alimentação adequada, entretanto os carboidratos são uma importante fonte de energia para o nosso corpo, e os lipídios atuam, entre outras funções, na formação de certos hormônios, na proteção contra choques mecânicos e no transporte de vitaminas.
''';

class _AlimentacaoState extends State<Alimentacao> {

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        centerTitle: true,
        title: Text('Alimentação Saudavél'),
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 20, 0, 30),
              child: Container(
                  width: 300,
                  child: Image.asset("images/alimentacao.png")),
            ),
            Container(
              padding: EdgeInsets.all(20),
              child: Text(dicaAlimentacao),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: ElevatedButton.icon(onPressed: () {Navigator.pushReplacementNamed(context, '/');}, icon: Icon(Icons.menu), label: Text("Voltar")),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Menu',
            backgroundColor: Colors.teal,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Sobre',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.teal,
        onTap: _onItemTapped,
      ),
    );
  }
}
