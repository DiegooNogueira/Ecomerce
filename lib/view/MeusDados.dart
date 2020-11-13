import 'package:flutter/material.dart';

class Dados extends StatefulWidget {
  @override
  _DadosState createState() => _DadosState();
}

class _DadosState extends State<Dados> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Meus Dados",
        ),
      ),
        body: SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            ListTile(
              title: Text("Diego Nogueira Marques"),
              subtitle: Text("Nome aluno"),
            ),
            ListTile(
              title: Text("18"),
              subtitle: Text("Idade"),
            ),
            ListTile(
              title: Text("diegoonogueiramarques@gmail.com"),
              subtitle: Text("Email"),
            ),
            ListTile(
              title: Text("(15) 997936063"),
              subtitle: Text("Telefone"),
            ),
            ListTile(
              title: Text("Masculino"),
              subtitle: Text("Sexo"),
            ),
            ListTile(
              title: Text("Nova Campina"),
              subtitle: Text("Cidade"),
            ),
            ListTile(
              title: Text("João Cardoso de Almeida Nº296"),
              subtitle: Text("Endereço"),
            ),
          ],
        ),
      ),
    ));
  }
}
