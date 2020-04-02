import 'package:flutter/material.dart';
import 'package:motovibe/model/Moto.dart';

List<Moto> istanciaLista() {
  List<Moto> lista = new List();
  lista.add(Moto("image/Yamaha_YZF.jpg", "Yamaha", 50));
  lista.add(Moto("image/Fireblade.jpeg", "Fireblade", 60));
  lista.add(Moto("image/ducati.jpg", "Ducati", 50));
  lista.add(Moto("image/Kawasaki.jpeg", "Kawasaki", 75));
  return lista;
}

Card metodoCatalogo(Moto moto) {
  return Card(
    child: Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Image.asset(
          moto.imagem,
          // width: 150,
          // height: 100,
        ),
        Container(
            child: Text(
              moto.nome,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            alignment: Alignment.centerLeft,
           ),
        Container(
          width: 300,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Text('R\$', style: TextStyle(fontSize: 8)),
                Text("${moto.preco}.00",
                    style:
                        TextStyle(fontSize: 23, fontWeight: FontWeight.bold)),
              ],
            ),
            alignment: Alignment.centerRight,
            
            ),
      ],
    ),
  );
}
