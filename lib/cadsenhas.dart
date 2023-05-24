
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_aula3_cadastro/Data/senha_sqlite_datasource.dart';
import 'package:flutter_application_aula3_cadastro/cadCartoes.dart';
import 'package:flutter_application_aula3_cadastro/esqueceuSenha.dart';
import 'package:flutter_application_aula3_cadastro/paginaInicial.dart';
import 'package:flutter_application_aula3_cadastro/perfilUsuario.dart';

class cadsenhas extends StatefulWidget{

  @override
  _cadsenhasState createState(){
    return _cadsenhasState();
  }
}

class _cadsenhasState extends State<cadsenhas>{
  TextEditingController descricaoController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController senhaController = TextEditingController();
  bool _ocultaSenha = false;

  @override
  void initState(){
    super.initState();
      _ocultaSenha = true;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Cadastro de senhas'),
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            color: Colors.black38,
            onPressed: () => Navigator.pop(context, false),
          ),
        ),
        body: Stack(
          children: <Widget>[
            ListView(children: <Widget>[
              fieldDescricao(),
              fieldEmail(),
              fieldSenha(),
            ])
          ],
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.green,
          foregroundColor: Colors.black,
          onPressed: (){
            senhaSQLiteDatasource().inserirSenha(descricaoController.text,
             emailController.text, senhaController.text);
          },
          child: Icon(Icons.add),
        ),
      ),
    );
  }

  Widget fieldDescricao(){
    return Container(
      padding: const EdgeInsets.all(10),
      child: TextField(
        controller: descricaoController,
        keyboardType: TextInputType.text,
        decoration: const InputDecoration(
          border: OutlineInputBorder(),
          labelText: 'Informe a descrição',
        ),
      ),
    );
  }

  Widget fieldEmail(){
    return Container(
      padding: const EdgeInsets.all(10),
      child: TextField(
        controller: emailController,
        keyboardType: TextInputType.text,
        decoration: const InputDecoration(
          border: OutlineInputBorder(),
          labelText: 'Email',
        ),
      ),
    );
  }
  
  Widget fieldSenha(){
    return Container(
      padding: EdgeInsets.all(20.0),
      child: TextField(
        controller: senhaController,
        obscureText: _ocultaSenha,
        decoration: InputDecoration(
          border: UnderlineInputBorder(),
          hintText: "Informe a sua senha",
          labelText: "Senha",
          helperText: "Digite uma senha para sua segurança",
          helperStyle: TextStyle(color: Colors.green),
          suffixIcon: IconButton(
            icon: 
              Icon(_ocultaSenha ? Icons.visibility : Icons.visibility_off),
            onPressed: () {
              setState(
                () {
                  _ocultaSenha = !_ocultaSenha;
                },
              );
            },
          ),
          alignLabelWithHint: false,
          filled: true,
        ),
        keyboardType: TextInputType.visiblePassword,
        textInputAction: TextInputAction.done,
      ),
    );
  }
}