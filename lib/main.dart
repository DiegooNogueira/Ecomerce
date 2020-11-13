import 'package:flutter/material.dart';
import 'package:diego/view/Home.dart';
import 'package:diego/view/Produto.dart';
import 'package:diego/view/MeusDados.dart';
import 'package:diego/view/Sobre.dart';

void main() {
  runApp(MaterialApp(
    home: Main(),
  ));
}

class Main extends StatefulWidget {
  @override
  _MainState createState() => _MainState();
}

class _MainState extends State<Main> {
  List _page = [Home(), Produto()];
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(
        child: ListView(
          children: [
            ListTile(
                title: Text("Produtos"),
                subtitle: Text("Promoções e Descontos"),
                onTap: () {
                  setState(() {
                    index = 0;
                  });
                  Navigator.pop(context);
                }),
            ListTile(
                title: Text("Meus dados"),
                onTap: () => Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Dados()))),
            ListTile(
                title: Text("Categoria de produtos"),
                subtitle: Text("Livros"),
                onTap: () {
                  setState(() {
                    index = 1;
                  });
                  Navigator.pop(context);
                }),
            ListTile(
                title: Text("Sobre"),
                subtitle: Text("Aluno"),
                onTap: () => Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Sobre()))),
          ],
        ),
      ),
      body: _page[index],
    );
  }
}
