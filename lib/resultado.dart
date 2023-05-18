import 'package:flutter/material.dart';

class Resultado extends StatefulWidget {
  String valor;
  Resultado(this.valor);


  @override
  State<Resultado> createState() => _ResultadoState();
}

class _ResultadoState extends State<Resultado> {
  
  @override
  Widget build(BuildContext context) {
    var caminhaImagem ="";
    if(widget.valor=="cara"){
      caminhaImagem = "images/moeda_cara.png";
    }
    else{
      caminhaImagem = "images/moeda_coroa.png";
    }
     return  Scaffold(
      backgroundColor: Colors.green,
      body: Container(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Image.asset(caminhaImagem),

            GestureDetector(
              child: Image.asset("images/botao_voltar.png"),
              onTap: (){
                Navigator.pop(context);
              },
            )
          ],

        ),
      ),
    );;
  }
}