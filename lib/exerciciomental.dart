import 'package:flutter/material.dart';

class ExercicioMental extends StatefulWidget {
  const ExercicioMental({Key? key}) : super(key: key);

  @override
  State<ExercicioMental> createState() => _ExercicioMentalState();
}

String dica ='''
 O exercício mental é um processo que aumenta o poder do cérebro, habilidade e concentração através da realização de tarefas específicas que são um desafio para o cérebro. Isto não precisa ser um processo formal; atividades como enigmas de Sudoku ou palavras cruzadas podem ser um grande exercício mental. Outros jogos de computador. Estudos têm mostrado que este tipo de exercício do cérebro ao longo da vida pode ajudar a manter a memória afiada, melhorar a concentração, e pode melhorar o desempenho de resolver problemas difíceis no trabalho.

Há muitas maneiras de obter exercício mental na vida sem ser jogos de computador ou palavras cruzadas. A leitura de um livro mais complexo, escrever em um jornal, ou aprender a tocar um instrumento musical podem ajudar a manter o cérebro afiado. Aprender a tocar um instrumento musical é especialmente difícil para as pessoas, muitas vezes, porque requer aprender a ler partituras e desenvolver novas memórias musculares. O exercício físico também pode ajudar a manter o cérebro afiado, aumentando o fluxo de sangue. Qualquer atividade em que a mente eo corpo estão envolvidos pode servir como um exercício mental, e tende a ser muito mais benéfico do que simplesmente sentar na frente da televisão.

Palavras cruzadas ou caça-palavras também podem ser ótimos exercícios mentais. Montar um quebra-cabeça grande e complexo é outra atividade divertida que pode desafiar o cérebro. Semelhante a aprender a tocar um instrumento musical, aprender a falar uma nova língua também pode ser um impulso maravilhoso para o cérebro e também pode ser benéfico para o currículo.

Outra das melhores maneiras de obter exercício mental é tentar conscientemente romper com hábitos. Usando a mão oposta do que é normalmente usada para comer ou escovar os dentes, por exemplo, pode ajudar a incentivar o uso de ambos os lados do cérebro. Algumas pessoas chegam a tentar mudar o mouse do computador para o outro lado, o que pode ser bastante desafiador. Além disso, a condução de um novo caminho para o trabalho ou escola que exige concentração adicional pode ajudar a despertar o cérebro e evitar a distração que muitas vezes pode ocorrer no carro. É preciso esforço para estimular continuamente o cérebro e fazer exercício físico mental, mas que vale a pena a longo prazo.

''';

class _ExercicioMentalState extends State<ExercicioMental> {

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
        title: Text('Exercicio Mental'),
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
                  child: Image.asset("images/exercicioMental.png")),
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