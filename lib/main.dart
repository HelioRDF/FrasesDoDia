import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State {
  Random num = new Random();
  List<String> _frases = [
    "Comece onde você está, use o que você tem e faça o que você pode.\n(Arthur Ashe)",
    "Tudo o que um sonho precisa para ser realizado é alguém que acredite que ele possa ser realizado.\n(Roberto Shinyashiki)",
    "Não importa que você vá devagar, contanto que você não pare.\n(Confúcio)",
    "Acredite em milagres, mas não dependa deles.\n(Immanuel Kant)",
    "Não é a carga que o derruba, mas a maneira como você a carrega.\n(Lou Holtz)",
    "Não existe nada de completamente errado no mundo, mesmo um relógio parado, consegue estar certo duas vezes por dia.\n(Paulo Coelho)",
    "Um livro, uma caneta, uma criança e um professor podem mudar o mundo.\n(Malala Yousafzai)",
    "A simplicidade é o último grau de sofisticação.\n(Leonardo da Vinci)",
    "Não há nada como regressar a um lugar que está igual para descobrir o quanto a gente mudou.\n(Nelson Mandela)"
  ];
  String _frase = "Clique abaixo para gerar uma frase";

  void _gerarFrase() {
    setState(() {
      _frase = _frases[num.nextInt(_frases.length)];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text("Frases do Dia"),
      ),
      body: Container(
        padding: EdgeInsets.all(50),
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset("images/logo.png"),
            Text(_frase,
                textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.blue),
            ),
            RaisedButton(
              onPressed: _gerarFrase,
              child: Text("Buscar Frase"),
              color: Colors.amber,
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(),
    );
  }
}
