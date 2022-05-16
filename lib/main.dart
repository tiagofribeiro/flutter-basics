import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// Prefixo 'stless' cria a predefinição necessária para o funcionamento de um StatelessWidget

// Classe principal do app (abrange a página inicial)
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

// Classe para manipulação da página inicial
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      // appBar: AppBar(
      //   title: Text('Olá mundo!'),
      // ),
      // drawer: Drawer(),

      body: Column(
        children: [
          Text('Pode entrar!')
        ]
        ),
    );
  }
}
