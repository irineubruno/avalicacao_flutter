import 'package:avaliacao_60pt/alimentacao.dart';
import 'package:avaliacao_60pt/calcular_imc.dart';
import 'package:avaliacao_60pt/exerciciomental.dart';
import 'package:avaliacao_60pt/exerciciosfisico.dart';
import 'package:avaliacao_60pt/sobre.dart';
import 'package:flutter/material.dart';
import 'cadastro.dart';
import 'home.dart';


void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {
      '/':(_)=> Home(),
      '/cadastro':(_)=> Cadastro(),
      '/alimentacao':(_)=> Alimentacao(),
      '/exercicifisico':(_)=> ExercicioFisico(),
      '/exerciciomental':(_)=> ExercicioMental(),
      '/calcular_imc':(_)=> CalcularIMC(),
      '/sobre':(_)=> Sobre(),
    },

  ));
}
