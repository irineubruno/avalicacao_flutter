import 'package:flutter/material.dart';

class ExercicioFisico extends StatefulWidget {
  const ExercicioFisico({Key? key}) : super(key: key);

  @override
  State<ExercicioFisico> createState() => _ExercicioFisicoState();
}

String dica ='''
Exercício físico
Apesar de estar relacionado com o movimento do corpo, o exercício físico trata-se de uma atividade programada, com movimentos executados de forma planejada e com objetivos específicos. 

Além disso, os exercícios devem ser constantes e realizados com acompanhamento de profissionais especializados. Eles são responsáveis pelas instruções e direcionamentos sobre intensidade, duração, cargas, objetivos e outras indicações importantes para a realização correta do exercício. O cronograma de exercícios é desenvolvido a partir da avaliação do perfil e estado físico de cada pessoa. 

Ao contrário da atividade física, eles envolvem movimentos técnicos, já que envolvem práticas esportivas. Natação, corrida, musculação, futebol, basquete, exercícios funcionais, boxe são alguns exemplos.

Os exercícios ajudam a equilibrar ou aumentar a musculatura, reduzir o peso corporal, melhorar a capacidade respiratória, diminuir a pressão arterial e prevenir doenças crônicas, como a diabetes e hipertensão. 

Benefícios 
Pessoas sedentárias, que ficam muito tempo sentadas, deitadas ou sem nenhum tipo de atividade ou exercício físico, têm mais chances de desenvolver complicações de saúde. 

Afinal, manter o corpo ativo ajuda na prevenção de uma série de problemas, e ainda traz outros benefícios para a vida de qualquer pessoa, principalmente se combinados com hábitos alimentares mais saudáveis.

Veja como as atividades e os exercícios físicos melhoram o bem-estar, contribuem significativamente para a qualidade do sono e, ainda, auxiliam na prevenção de doenças crônicas.
''';

class _ExercicioFisicoState extends State<ExercicioFisico> {

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
        title: Text('Exercício Físico'),
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
                  child: Image.asset("images/exerciciofisico.png")),
            ),
            Container(
              padding: EdgeInsets.all(20),
              child: Text(dica),
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
