

import 'package:motovibe/model/MotoDetail.dart';

MotoDetail MotoDetailSelect(String modelo){
  if(modelo=="Yamaha"){
    return MotoDetail("Yamaha", "50", "Concretizar o sonho de ter uma moto parecida com as da MotoGP é para poucos. Modelos como uma Ducati Panigale V4 ou uma Yamaha YZF-R1 são distantes para a maioria não só por causa do preço, mas também pela técnica de pilotagem que exigem e pela necessidade de um local adequado para desfrutar dos seus mais de 200 cavalos de potência.");
  }
  if(modelo=="Fireblade"){
    return MotoDetail("Fireblade","60", "A nova Honda CBR 1000RR 2012 Fireblade foi projetada para realçar ainda mais o seu potencial esportivo, de “cara nova” a oitava geração da Fireblade mesmo parada parece que está voando.");
  }
  if(modelo=="Kawasaki"){
    return MotoDetail("Kawasaki", "75","A Kawasaki Ninja ZX-6R é uma motocicleta de 600 cc na série Ninja sport bike do fabricante japonês Kawasaki. Foi introduzido em 1995 e foi constantemente atualizado ao longo dos anos em resposta a novos produtos da Honda, Suzuki e Yamaha.");
  }
  if(modelo=="Ducati"){
    return MotoDetail("Ducati", "50", "A Ducati 959 Panigale é uma bicicleta esportiva de 955 cc fabricada pela Ducati como sucessora da 898 cc 899. A motocicleta recebeu o nome da pequena cidade industrial de Borgo Panigale. Foi anunciado em 2015 para o ano modelo de 2016.");
  }
}