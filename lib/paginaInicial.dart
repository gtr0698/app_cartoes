// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_aula3_cadastro/cadCartoes.dart';
import 'package:flutter_application_aula3_cadastro/cadsenhas.dart';
import 'package:flutter_application_aula3_cadastro/geradorsenha.dart';
import 'package:flutter_application_aula3_cadastro/perfilUsuario.dart';

class paginaInicial extends StatelessWidget{
  
  
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        drawer: Drawer(
          child: ListView(
            children: [
              ListTile(
                  leading: Icon(Icons.account_circle),
                  title: Text("Perfil"),
                  subtitle: Text("Perfil do usuário"),
                  trailing: Icon(Icons.arrow_forward),
                  onTap: () {
                    Navigator.push(context,
                      MaterialPageRoute(builder: (context){
                        return perfilUsuario();
                      }));
                  }),
              ListTile(
                  leading: Icon(Icons.credit_card),
                  title: Text("Cadastro de Cartões"),
                  subtitle: Text("Cadastro de cartões"),
                  trailing: Icon(Icons.arrow_forward),
                  onTap: () {
                    Navigator.push(context,
                      MaterialPageRoute(builder: (context){
                        return cadcartoes();
                      }));
                  }),
              ListTile(
                  leading: Icon(Icons.password),
                  title: Text("Cadastro de senhas"),
                  subtitle: Text("Cadastre uma nova senha"),
                  trailing: Icon(Icons.arrow_forward),
                  onTap: () {
                    Navigator.push(context,
                      MaterialPageRoute(builder: (context){
                        return cadsenhas();
                      }));
                  }),
              ListTile(
                  leading: Icon(Icons.password),
                  title: Text("Gerador de senhas"),
                  subtitle: Text("Gerador de senhas"),
                  trailing: Icon(Icons.arrow_forward),
                  onTap: () {
                    Navigator.push(context,
                      MaterialPageRoute(builder: (context){
                        return geradorSenha();
                      }));
                  }),
            ],
          ),
        ),
        appBar: AppBar(
            backgroundColor: Color.fromARGB(255, 44, 152, 34),
            title: const Text('Pagina Inicial')),
        body:Center(
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Color.fromARGB(255, 44, 152, 34),
            ),
            child: Text('Voltar'),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          // ignore: prefer_const_literals_to_create_immutables
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.person), label: "Minha Conta"),
            BottomNavigationBarItem(
              icon: Icon(Icons.person), label: "Cadastro Senhas"),
            BottomNavigationBarItem(
              icon: Icon(Icons.person), label: "Cartões")
          ],
        ),
      ),
    );
  }
} 
