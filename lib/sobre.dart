import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Sobre extends StatefulWidget {
  const Sobre({Key? key}) : super(key: key);

  @override
  State<Sobre> createState() => _SobreState();
}


final url = 'www.google.com';
String dica ='''
Baseada em Arlington, Texas, esta academia foi fundada por Brian Dobson em 1987, quando não havia muitas academias ao redor. Ela segue a mesma linha “sem frescuras” da Temple Gym. Também foi um centro de treino para um grande fisiculturista, o Ronnie Coleman, 8 vezes Mr. Olympia. E tem sido local de treino para mais de 100 campões mundiais. É uma academia única que oferece uma atmosfera amigável aos membros e reforça o desejo de todos aqueles que desejam construir uma carreira em entretenimento físico, sendo segunda posição nesta seleção, das 10 melhores academias do mundo.
''';

class _SobreState extends State<Sobre> {
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
        title: Text('Sobre'),
        actions: <Widget>[
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
                  child: Image.asset("images/sobre.jpg")),
            ),
            Container(
              padding: EdgeInsets.all(20),
              child: Text(dica),
            ),

            Padding(
              padding: const EdgeInsets.fromLTRB(0, 20, 0, 30),
              child: Container(
                  width: 300,
                  child: Image.asset("images/localAcademia.png")),
            ),
            Container(
              padding: EdgeInsets.all(20),
              child: Text('''
              Telefone: +55 8987-4433
              Email: academia@gmail.com
              '''),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: ElevatedButton.icon(onPressed: () async {
                await launch("https://wa.me/5569992996821");
              }, icon: Icon(Icons.call), label: Text("Contato")),
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
