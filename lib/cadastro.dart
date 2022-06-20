import 'package:avaliacao_60pt/Controler/controlecadastro.dart';
import 'package:flutter/material.dart';

class Cadastro extends StatefulWidget {
  const Cadastro({Key? key}) : super(key: key);

  @override
  State<Cadastro> createState() => _CadastroState();
}

class _CadastroState extends State<Cadastro> {
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
        title: Text("Cadastro IMC"),
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
        child: ControleCadastroScreen(),
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
