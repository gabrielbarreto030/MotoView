import 'package:flutter/material.dart';
import 'package:motovibe/model/Moto.dart';
import 'package:motovibe/screen/DetailMoto/AluguelDetail-view.dart';
import 'package:motovibe/screen/DetailMoto/Aluguel_lista.dart';



import 'catalogo-controller.dart';

class Catalogo extends StatefulWidget {
  @override
  _CatalogoState createState() => _CatalogoState();
}

class _CatalogoState extends State<Catalogo>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    List<Moto> lista = istanciaLista();

    return Scaffold(
        appBar: AppBar(title: Text("Motos Disponíveis")),
        body: GridView.count(
          crossAxisCount: 2,
          children: List.generate(4, (index) {
            return            
             GestureDetector(
               onTap: (){          
                 debugPrint(lista[index].nome);
                 Navigator.of(context).push(MaterialPageRoute(builder: (context)=> AluguelDetail(lista[index].nome)));
               },
               child: metodoCatalogo(lista[index]));
          }),
        ));
  }
}
