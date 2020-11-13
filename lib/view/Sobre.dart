import 'package:flutter/material.dart';

class Sobre extends StatefulWidget {
  @override
  _SobreState createState() => _SobreState();
}

class _SobreState extends State<Sobre> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tarefa de TM"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListTile(
              title: Text("Diego Nogueira Marques"),
              subtitle: Text("Nome completo"),
            ),
            ListTile(
              title: Text("18"),
              subtitle: Text("Idade"),
            ),
            ListTile(
              title: Text("31082002"),
              subtitle: Text("Data Nascimento"),
            ),
          ],
        ),
      ),
    );
  }
}
