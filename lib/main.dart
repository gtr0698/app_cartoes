// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_aula3_cadastro/criaConta.dart';
import 'package:flutter_application_aula3_cadastro/esqueceuSenha.dart';
import 'package:flutter_application_aula3_cadastro/paginaInicial.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Login'),
        ),
      body: _Login(),
      ),
    );
  }
}

class _Login extends StatelessWidget {
  String email = '';
  String pass = '';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: ListView(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Column(
                children: <Widget>[
                  Card(
                    child: Container(
                    padding: EdgeInsets.all(32.0),
                      child: Column(
                    children: <Widget>[
                      Image.network(
                      "data:image/jpeg;base64,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"
                    ),
                      Divider(),
                      Text("Meu app em Flutter")
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(10),
            child: const Text(
              'Digite os dados',
              style: TextStyle(fontSize: 20),
            )),
          Container(
            padding: const EdgeInsets.all(10),
            child: TextField(
              keyboardType: TextInputType.emailAddress,
              onChanged: (text) {
                email = text;
                
              },
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'e-mail',
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(10,10,10,0),
            child: TextField(
                            onChanged: (text) {
                pass = text;
                
              },
              obscureText: true,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Senha',
                
              ),
            ),
          ),
          TextButton(
            onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return esqueceuSenha();
                  }
                  )
                  );
                },
            child: const Text('Esqueci a senha',),
            ),
            Container(
              height: 50,
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: ElevatedButton(
                child: const Text('Login'),
                onPressed: () {
                  if(email == '' && pass == '')
                  // ignore: curly_braces_in_flow_control_structures
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return paginaInicial();
                  }
                  )
                  );
                },
              ),
            ),
            Row(
              // ignore: sort_child_properties_last
              children: <Widget>[
                const Text('Não possui conta?'),
                TextButton(
                  child: const Text(
                    'Cadastre-se aqui',
                    style: TextStyle(fontSize: 20),
                  ),
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return criaConta();
                    }
                    )
                    );
                  },
                )
              ],
              mainAxisAlignment: MainAxisAlignment.center,
            ),
        ],
      ),
    );
  }
}
