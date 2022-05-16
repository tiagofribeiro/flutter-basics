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

  void decrementCount() {
    print('Uma pessoa saiu');
  }

  void incrementCount() {
    print('Uma pessoa entrou');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black54,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Pode entrar!',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
          const Text(
            '0',
            style: TextStyle(
              fontSize: 80,
              color: Colors.white,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: decrementCount,
                child: Text(
                  'Saiu',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ),
              TextButton(
                onPressed: incrementCount,
                child: Text('Entrou',
                  style: TextStyle(
                    color: Colors.black,
                  ),),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
