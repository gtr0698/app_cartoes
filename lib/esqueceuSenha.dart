// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class esqueceuSenha extends StatelessWidget{


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Recuperar sua senha'),
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            color: Colors.black38,
            onPressed: () => Navigator.pop(context, false),
          ),
        ),
        body: mensagem(),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.amber,
          foregroundColor: Colors.black,
          onPressed: () {},
          child: Icon(Icons.email),
        ),
      ),
    );
  }
}

class mensagem extends StatelessWidget{
  
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 60, left: 40, right: 40),
      child: ListView(
        children: [sizedBox(), textoMaior(), textoMenor(), fieldEmail()],
      ),
    );
  }
}

Widget textoMaior(){
  return Text(
    'Esqueceu sua senha',
    style: TextStyle(fontSize: 32, fontWeight: FontWeight.w500),
    textAlign: TextAlign.center,
  );
}

Widget textoMenor(){
  return Text(
    'Informe seu e-mail associado a sua conta para recuperar sua senha',
    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
    textAlign: TextAlign.center,
  );
}

Widget fieldEmail(){
  return TextFormField(
    keyboardType: TextInputType.emailAddress,
    decoration: 
        InputDecoration(border: OutlineInputBorder(), labelText: 'E-mail')
  );
}

Widget sizedBox(){
  return SizedBox(
    width: 200,
    height: 200,
    child: Image.network(
      "data:image/png;base64,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"
    ),
  );
}
