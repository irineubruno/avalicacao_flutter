import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('ACADEMIA TOP10'),

        backgroundColor: Colors.teal,
      ),
      backgroundColor: Colors.white,

      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              child: Image.asset('images/logo.png', fit: BoxFit.cover,),
            ),
            Card(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  const ListTile(
                    leading: Icon(Icons.account_box_rounded),
                    title: Text('Cadastro Pessoa'),
                    subtitle: Text('Identificação da pessoa para IMC.'),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      TextButton.icon(onPressed: (){
                        Navigator.pushReplacementNamed(context, '/cadastro');
                      }, icon: Icon(Icons.add), label: Text('Adicionar'),
                      ),
                      const SizedBox(width: 8),
                      TextButton.icon(onPressed: (){
                        Navigator.pushReplacementNamed(context, '/calcular_imc');
                      }, icon: Icon(Icons.calculate), label: Text('Calcular IMC')
                      ),
                      const SizedBox(width: 8),
                    ],
                  ),
                ],
              ),
            ),
            Card(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  const ListTile(
                    leading: Icon(Icons.book),
                    title: Text('Alimentação Saudavel'),
                    subtitle: Text('Dicas para uma boa alimentação'),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      TextButton.icon(onPressed: (){
                        Navigator.pushReplacementNamed(context, '/alimentacao');
                      }, icon: Icon(Icons.arrow_right_alt_sharp), label: Text('Leitura')
                      ),
                      const SizedBox(width: 8),
                    ],
                  ),
                ],
              ),
            ),
            Card(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  const ListTile(
                    leading: Icon(Icons.book),
                    title: Text('Exercícios Físicos'),
                    subtitle: Text('Dicas de exercicios'),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      TextButton.icon(onPressed: (){
                        Navigator.pushReplacementNamed(context, '/exercicifisico');
                      }, icon: Icon(Icons.arrow_right_alt_sharp), label: Text('Leitura')
                      ),
                      const SizedBox(width: 8),
                    ],
                  ),
                ],
              ),
            ),
            Card(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  const ListTile(
                    leading: Icon(Icons.book),
                    title: Text('Exercícios Mental'),
                    subtitle: Text('Exercitar a mente também é necessário !'),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      TextButton.icon(onPressed: (){
                        Navigator.pushReplacementNamed(context, '/exerciciomental');
                      }, icon: Icon(Icons.arrow_right_alt_sharp), label: Text('Leitura')
                      ),
                      const SizedBox(width: 8),
                    ],
                  ),
                ],
              ),
            ),
            Card(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  const ListTile(
                    leading: Icon(Icons.apartment_rounded),
                    title: Text('Sobre Academia'),
                    subtitle: Text('Quem Somos, Conheça Nossa história'),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      TextButton.icon(onPressed: (){
                        Navigator.pushReplacementNamed(context, '/sobre');
                      }, icon: Icon(Icons.arrow_right_alt_sharp), label: Text('Leitura')
                      ),
                      const SizedBox(width: 8),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),

      ),
    );
  }
}
