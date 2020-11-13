import 'package:diego/data/Produtos.dart';
import 'package:flutter/material.dart';

class Produto extends StatefulWidget {
  @override
  _ProdutoState createState() => _ProdutoState();
}

class _ProdutoState extends State<Produto> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Divider(
            color: Colors.white,
          ),
          Center(child: Text("Mouses", style: TextStyle(fontSize: 18))),
          Container(
            width: 1000,
            height: 170,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Container(
                    width: 260,
                    child: Card(
                      child: Column(
                        children: [
                          Image.asset(
                            mouse[index]["image"],
                            filterQuality: FilterQuality.high,
                            fit: BoxFit.fill,
                            height: 90,
                          ),
                          ListTile(
                            title: Text(mouse[index]["name"]),
                            trailing:
                                Text("R\$" + mouse[index]["price"].toString()),
                          )
                        ],
                      ),
                    ));
              },
              itemCount: mouse.length,
            ),
          ),
          Divider(
            color: Colors.white,
          ),
          Center(child: Text("Teclados", style: TextStyle(fontSize: 18))),
          Container(
            width: 1000,
            height: 180,
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemBuilder: (context, index) {
                return Container(
                    width: 260,
                    child: Card(
                      child: Column(
                        children: [
                          Image.asset(
                            teclado[index]["image"],
                            filterQuality: FilterQuality.high,
                            fit: BoxFit.fill,
                            height: 90,
                          ),
                          ListTile(
                            title: Text(teclado[index]["name"]),
                            trailing: Text(
                                "R\$" + teclado[index]["price"].toString()),
                          )
                        ],
                      ),
                    ));
              },
              itemCount: teclado.length,
            ),
          ),
          Divider(
            color: Colors.white,
          ),
          Center(child: Text("Monitores", style: TextStyle(fontSize: 18))),
          Container(
            width: 1000,
            height: 170,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Container(
                    width: 260,
                    child: Card(
                      child: Column(
                        children: [
                          Image.asset(
                            monitor[index]["image"],
                            filterQuality: FilterQuality.high,
                            fit: BoxFit.fill,
                            height: 90,
                          ),
                          ListTile(
                            title: Text(monitor[index]["name"]),
                            trailing: Text(
                                "R\$" + monitor[index]["price"].toString()),
                          )
                        ],
                      ),
                    ));
              },
              itemCount: monitor.length,
            ),
          ),
          Divider(
            color: Colors.white,
          ),
          Center(
              child: Text(
            "Headsets",
            style: TextStyle(fontSize: 18),
          )),
          Container(
            width: 1000,
            height: 180,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Container(
                    width: 260,
                    child: Card(
                      child: Column(
                        children: [
                          Image.asset(
                            headset[index]["image"],
                            filterQuality: FilterQuality.high,
                            fit: BoxFit.fill,
                            height: 90,
                          ),
                          ListTile(
                            title: Text(headset[index]["name"]),
                            trailing: Text(
                                "R\$" + headset[index]["price"].toString()),
                          )
                        ],
                      ),
                    ));
              },
              itemCount: headset.length,
            ),
          )
        ],
      ),
    ));
  }
}
