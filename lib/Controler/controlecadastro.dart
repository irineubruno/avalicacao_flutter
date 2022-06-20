import 'package:avaliacao_60pt/Controler/bdpessoa.dart';
import 'package:avaliacao_60pt/Controler/cotrolepadding.dart';
import 'package:flutter/material.dart';
class ControleCadastroScreen extends StatefulWidget{
  const ControleCadastroScreen({Key? key}) : super(key: key);

  @override
  State<ControleCadastroScreen> createState() => _ControleCadastroScreenState();
}

class _ControleCadastroScreenState extends State<ControleCadastroScreen> {

  TextEditingController controlador_cpf = TextEditingController();
  TextEditingController controlador_nome = TextEditingController();
  TextEditingController controlador_idade = TextEditingController();
  TextEditingController controlador_altura = TextEditingController();
  TextEditingController controlador_peso = TextEditingController();

  Future<void> salvarBanco() async{
    String cpf = controlador_cpf.text;
    String nome = controlador_nome.text;
    String idade = controlador_idade.text;
    String altura = controlador_altura.text;
    String peso = controlador_peso.text;
    final database = await DatabaseSQLite().openConnection();
    database.insert('pessoas', {'cpf': cpf, 'nome': nome, 'idade': idade, 'altura': altura, 'peso': peso});
    final snackBar = SnackBar(behavior: SnackBarBehavior.floating, elevation: 150.0, content: Text('Salvo com sucesso'),);
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
    Navigator.pushReplacementNamed(context, '/');
  }

  //forçar a inicializar antes de renderizar a tela
  @override
  void initState(){
    super.initState();
    _database();
  }

  Future<void> _database() async{
    final database = await DatabaseSQLite().openConnection();
  }

  @override
  Widget build(BuildContext context) {

    return Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
    Padding(
    padding: const EdgeInsets.fromLTRB(0, 20, 0, 30),
    child: Container(
    width: 300,
    child: Image.asset("images/logo.png")),
    ),
    ControlePadding(texto: 'CPF', controlador: controlador_cpf, ),
    ControlePadding(texto: 'Nome Completo', controlador: controlador_nome, ),
    ControlePadding(texto: 'Idade', controlador: controlador_idade, ),
    ControlePadding(texto: 'Altura', controlador: controlador_altura, ),
    ControlePadding(texto: 'Peso', controlador: controlador_peso),
          Container(
            width: 330,
            height: 80,
            child: Padding(
              padding: const EdgeInsets.only(top: 20),
              child: ElevatedButton.icon(onPressed: salvarBanco, icon: Icon(Icons.save_alt), label: Text("Salvar"),
              ),
            ),
          ),
          
        ],
    );
  }
}