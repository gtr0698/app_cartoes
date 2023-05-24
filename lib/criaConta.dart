import 'dart:js';

import 'package:flutter/material.dart';
import 'package:flutter_application_aula3_cadastro/paginaInicial.dart';


class criaConta extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Cadastro'),
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            color: Colors.black38,
            onPressed: () => Navigator.pop(context, false),
          ),
          actions: [IconButton(onPressed:() {print("salvei");}, icon: const Icon(Icons.save))],
        ),
      body: cadastro(),
      ),
    );
  }
}

class cadastro extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Form(
        child: Column(
          children: [
            campoNome(),
            campoEmail(),
            campoSenha(),
            botaoSalvar(),
          ]
        ),
      ),
    );
  }
}

Widget campoNome(){
  return TextFormField(
    decoration: 
      InputDecoration(border: OutlineInputBorder(), labelText: 'Nome'));
}

Widget campoEmail(){
  return TextFormField(
    keyboardType: TextInputType.emailAddress,
    decoration: 
      InputDecoration(border: OutlineInputBorder(), labelText: 'E-mail'));
}

Widget campoSenha(){
  return TextFormField(
    obscureText: true,
    decoration: 
      InputDecoration(border: OutlineInputBorder(), labelText: 'Senha'));
}

Widget botaoSalvar(){
  return ElevatedButton(
                child: const Text('Salvar'),
                onPressed: () {
                  Navigator.push(context as BuildContext, MaterialPageRoute(builder: (context){
                    return paginaInicial();
                  }
                )
              );
            },
          );
}
