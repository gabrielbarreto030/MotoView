import 'package:flutter/material.dart';
import 'package:motovibe/model/ImagensMotos.dart';

List<AssetImage> SelicionaListaMoto(String modelo){
  ImagensMotos caminho = ImagensMotos();
  if(modelo=="Yamaha"){
      return caminho.Yamaha();
  }
   if(modelo=="Kawasaki"){
      return caminho.Kawasaki();
  }
   if(modelo=="Fireblade"){
      return caminho.Fireblade();
  }
   if(modelo=="Ducati"){
      return caminho.Ducati();
  }
  else{
    return List();
  }

}