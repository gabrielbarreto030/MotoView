import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:motovibe/model/MotoDetail.dart';
import 'package:motovibe/model/MotoDetailSelect.dart';
import 'package:motovibe/screen/Agendamento.dart';
import 'package:motovibe/screen/DetailMoto/AluguelDetail-controller.dart';

bool Atcap = false;
bool Atroupa = false;

class AluguelDetail extends StatefulWidget {
  String modelo;
  AluguelDetail(this.modelo);
  @override
  _AluguelDetailState createState() => _AluguelDetailState(modelo);
}

class _AluguelDetailState extends State<AluguelDetail>

    with SingleTickerProviderStateMixin {
  AnimationController _controller;
  String modelo;
  _AluguelDetailState(this.modelo);


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
    MotoDetail moto =MotoDetailSelect(modelo);
    int Capacete = 20;
    int Roupa = 50;
    int Total = 0;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: <Widget>[
          Container(
              height: 300.0,
              width: 500.0,
              child: Carousel(
                images: SelicionaListaMoto(moto.nome),
              )),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Text(
                  moto.nome,
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.w800),
                  textAlign: TextAlign.start,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "p/dia ${moto.valor}",
                      style: TextStyle(fontSize: 22),
                      textAlign: TextAlign.end,
                    ),
                    Text(
                      ",00",
                      style: TextStyle(fontSize: 11),
                      textAlign: TextAlign.end,
                    ),
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              children: <Widget>[
                Text("Descrição",
                    style: TextStyle(color: Colors.grey, fontSize: 18))
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              border: Border(
                top: BorderSide(width: 0.4, color: Colors.grey),
                bottom: BorderSide(width: 0.6, color: Colors.grey),
              ),
            ),
            child: Text(
              moto.descricao,
              style: TextStyle(fontSize: 14),
            ),
          ),
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                SwitchListTile(
                  value: Atcap,
                  onChanged: (bool value) {
                    setState(() {
                      Atcap = value;
                    });
                  },
                  title: Text("Capacete Extra +R\$$Capacete"),
                  activeColor: Colors.redAccent,
                ),
                SwitchListTile(
                  value: Atroupa,
                  onChanged: (bool value) {
                    setState(() {
                      Atroupa = value;
                    });
                  },
                  title: Text("Colete de Proteção+R\$$Roupa"),
                  activeColor: Colors.redAccent,
                ),
                RaisedButton(
                  color: Colors.black,
                  onPressed: () {
                    // Navigator.of(context).push(MaterialPageRoute(builder: (context)=> Agendamento(modelMoto, precoMoto, acessoMoto)));
                  },
                  child: Container(
                      width: 350,
                      child: Text(
                        "Continuar",
                        style: TextStyle(fontSize: 20,color: Colors.white),
                        textAlign: TextAlign.center,
                        
                      )),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
