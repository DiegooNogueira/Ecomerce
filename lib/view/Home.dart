import 'package:diego/data/Produtos.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Divider(
            color: Colors.white,
          ),
          Center(child: Text("O Produto do momento", style: TextStyle(fontSize: 18))),
          Card(
            child: Column(
              children: [
                Image.asset(
                  "assets/mouse1.jpg",
                  height: 120,
                ),
                ListTile(
                  title: Text("Mouse"),
                  trailing: Text("R\$ 39.20"),
                )
              ],
            ),
          ),
          Divider(
            color: Colors.white,
          ),
          Text(
            "Black Friday",
            style: TextStyle(fontSize: 16),
          ),
          Text(
            "Desconto de 34%",
            style: TextStyle(fontSize: 12),
          ),
          Container(
            width: 1000,
            height: 180,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                print(mouse[index]);
                double price = (mouse[index]["price"] * 0.66);
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
                            trailing: Column(
                              children: [
                                Text(
                                  "R\$" + mouse[index]["price"].toString(),
                                  style: TextStyle(
                                      decoration: TextDecoration.lineThrough),
                                ),
                                Text(
                                  "R\$" +
                                      price.toStringAsPrecision(4).toString(),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ));
              },
              itemCount: mouse.length,
            ),
          )
        ],
      ),
    );
  }
}
